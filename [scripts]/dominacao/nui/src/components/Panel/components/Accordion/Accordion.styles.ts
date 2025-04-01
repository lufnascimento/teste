import styled from "styled-components";
import * as Acc from "@radix-ui/react-accordion";

export const Accordion = styled.div`
    width: 41.276rem;
    height: 69.6rem;
    position: relative;
`;

export const Bg = styled.div`
    width: 100%;
    height: 100%;
    position: absolute;
    z-index: 1;
    background: linear-gradient(180deg, rgba(255, 255, 255, 0.00) 0%, rgba(255, 255, 255, 0.03) 100%);
    pointer-events: none;
`;

export const AccordionContainer = styled(Acc.Root)`
    width: 100%;
    height: 100%;
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0.5rem;
    padding-top: 15.7rem;
    padding-bottom: 2rem;
`;

export const NotData = styled.p`
    color: #FFF;
    font-family: Bold;
    font-size: 1.2rem;
`;

export const AccordionItem = styled(Acc.Item)`
    width: 38.7rem;
    border-radius: 1rem;
    border: 0.1rem solid rgb(166, 1, 58, 1);
    background: rgb(166, 1, 58, .15);
    overflow: hidden;

    &[data-state="open"] {
        animation: slideDown 300ms forwards;
        max-height: 30rem;
    }

    &[data-state="closed"] {
        animation: slideUp 300ms forwards;
        max-height: 9rem;
    }

    @keyframes slideDown {
        from {
            max-height: 9rem;
        }
        to {
            max-height: 30rem; 
        }
    }

    @keyframes slideUp {
        from {
            max-height: 30rem; 
        }
        to {
            max-height: 9rem;
        }
    }
`;

export const AccordionTrigger = styled(Acc.Trigger)`
    width: 100%;
    height: 3.7691rem;
    background-color: transparent;
    outline: none;
    border: none;
    cursor: pointer;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
`;

export const AccordionContent = styled(Acc.Content)`
    width: 100%;
    height: 8.5rem;
`;

export const ContainerContent = styled.div`
    width: 100%;
    height: 100%;
    display: grid;
    place-items: center;
    grid-template-columns: repeat(2, 1fr);
    padding: 2rem 0;
    position: relative;

    &::before {
        content: '';
        width: 0.1rem;
        height: 7.1rem;
        background: rgb(166, 1, 58, .10);
        position: absolute;
    }

    &::after {
        content: '';
        width: 100%;
        height: 0.1rem;
        background: rgb(166, 1, 58, .10);
        position: absolute;
        top: 0;
        left: 0;
    }
`;

export const ItemWrapper = styled.div`
    width: 9.3rem;
    height: 1.5rem;
    color: #FFF;
    font-family: Bold;
    font-size: 1.2rem;
    display: flex;
    align-items: center;
    gap: 0.4rem;
    position: relative;

    img {
        height: 1rem;
    }

    span {
        position: absolute;
        right: 0;
        color: rgb(166, 1, 58, 1);
    }
`;

export const Points = styled.p`
    color: rgb(166, 1, 58, 1);
    font-family: Bold;
    font-size: 1.2rem;
    letter-spacing: -0.036rem;
    position: absolute;
    left: 1.5rem;
`;

export const Name = styled.span`
    color: #FFF;
    font-family: Bold;
    font-size: 1.2rem;
    letter-spacing: -0.036rem;
`;

export const KillsWrapper = styled.div`
    position: absolute;
    right: 6rem;
    display: flex;
    align-items: center;
    gap: 0.3rem;

    p {
        color: #FFF;
        font-family: Bold;
        font-size: 1.2rem;
    }

    span {
        color: rgb(166, 1, 58, 1);
        font-family: Bold;
        font-size: 1.2rem;
        position: relative;
    }
`;

export const Position = styled.div`
    color: rgb(166, 1, 58, 1);
    font-family: Bold;
    font-size: 1.2rem;
    position: absolute;
    right: 2.2rem;
`;