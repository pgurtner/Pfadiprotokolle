const fs = require('fs');

const BLOCK_IDENTIFIERS = {
    '#': Section,
    '"': ContinousText,
    '>': Quote,
    '': Note,
    'todo:\t': NoteList,
    'todo: voting': Voting
}

const INLINE_IDENTIFIERS = {
    '//': Comment
    'todo: date': Date,

}

abstract class VisibleContent {
    public abstract toTex (): string;
}

class Section extends VisibleContent {
    private name: string;
    private depth: number;
    private content: VisibleContent[];

    public constructor (rawContent: string) {
        super();
        const meta = this.extractMeta(rawContent);
        this.name = meta.sectionName;
        this.depth = meta.sectionDepth;
        this.content = this.parseRawContent(meta.sectionContent);
    }

    private extractMeta (rawContent: string): {
        sectionName: string,
        sectionDepth: number,
        sectionContent: string
    } {
        const sectionRegex = /^(?<depth>#*)\s*(?<name>.*)\s*\n(?<content>[\s\S]*)/m;
        const regexResult = sectionRegex.exec(rawContent);

        if (regexResult === null) {
            throw 'invalid raw section text: ' + rawContent;
        }

        const regexGroups = regexResult.groups;
        if (regexGroups === undefined) {
            throw 'section meta regex didnt work';
        }

        const sectionName = regexGroups.name as string | undefined;
        const sectionDepthChars = regexGroups.depth as string | undefined;
        const sectionContent = regexGroups.content as string | undefined;

        if (sectionName === undefined || sectionDepthChars === undefined || sectionContent === undefined) {
            throw 'invalid regex, has not all required capture groups';
        }

        return {
            sectionName,
            sectionDepth: sectionDepthChars.length,
            sectionContent
        }
    }

    private parseRawContent (rawContent: string): VisibleContent[] {
        /**
         * Stück für Stück durchgehen
         *      Block-Typ des nächsten Textblocks bestimmen (dabei auch die Länge des Textblocks bestimmen)
         *      Textblock parsen
         *          inline Elemente parsen usw.
         *      Textblock entfernen
         *      wieder von vorne bis Text leer ist (dabei leere Zeilen überspringen)
         */
    }

    public toTex (): string {
        const header = `\\${'sub'.repeat(this.depth)}topic{${this.name}}\n`;
        return header + this.content.map(item => item.toTex()).join('\n');
    }
}

class ContinousText extends VisibleContent {

}

class NoteList extends VisibleContent {

}

class Note extends VisibleContent {

}

function parseToSections (rawContent: string): Section[] {
    const topLevelHeaderRegex = /^#[^#]/gm;

    const rawTopSections = rawContent.split(topLevelHeaderRegex);

    return rawTopSections.map(parseTopSection);
}

function parseTopSection (rawTopSection: string): Section {
    return new Section(rawTopSection);
}