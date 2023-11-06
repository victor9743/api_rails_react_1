export const Card = ({header, bg_card, valor}) => {
    return (
        <div className={bg_card} style={{height: "100px"}}>
            <div className="card-header text-center">
                {header}
            </div>
            <div className="card-body d-flex justify-content-end">
                <strong className="card-text">{valor}</strong>
            </div>
        </div>
    )
}