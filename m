Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BC21CC3D
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 17:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=BCKgzWFqil7GUuiAVEwzIBOkx01smIbrT64h19HwMPA=; b=cL/qMauBec9YAy
	1SGH2NUTaDkaO7H3gOyk69y7V0D1QwcKRKlZWkiPFrOKoSYaC20wGeKQ3bqX8z8APXU+54ZKJWYss
	wHmgxmjculcrypbkg+AeFTEHMkxg651xqk5akMetIfUgBhzjB0e94Quk9PRmkPNIos0zD8z1SxAYy
	aXcftVnartzBidYS//WRvbcVrRZnYJ36IstXHm0TJKHaTsburAGZ7xMRbWehyhWfygMQO1HKQanxt
	8uyYEFgDGfVWjA5PwnWrZsUn+ruWey9LvRzSkrZZjCKeRmrKI/D7YTXnl9F46iQ3Ap8kUCF6GNNzm
	ADeP/gjj35+WybxkzsWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZgC-000325-4r; Tue, 14 May 2019 15:49:24 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZg7-00031f-8C
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 15:49:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557848959; x=1589384959;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=ESpk3uQBfTlvANB+LtFb5Ta8B7uVeZr40vxpjrQJO+Y=;
 b=A8osWyrKM8enPHA7H+RNNAzW6605PI3PjWocPKfI6VFC1L2MXa5ZvgxX
 ZXV/YaXpzLGCEv2IokR3uCz3mWRXe4/QFiU/SrCySxTSN338Ag0fLdbn1
 37K5tVbL8KAt3S96+bDKQWgwMyVJpDbjIjoFhEPTG/yJhSL62EWDD3XEC
 e9UtU3qeuYqPzR0BZ0R1W1gDudObt5odMsjWr1vnhvjX8AWjpauQhMYA8
 nODwEHKGhY6EDSV4VMwbqUISJg9n0Kj001BEe+zjUkkNm9/DGw/nis2XS
 m5tU9pgA54eEQeETGRF9Rm0MfBVDhABYq7nDd3hH7AdaG9XTBWayJXKKr A==;
X-IronPort-AV: E=Sophos;i="5.60,469,1549900800"; d="scan'208";a="109469031"
Received: from mail-by2nam01lp2057.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.57])
 by ob1.hgst.iphmx.com with ESMTP; 14 May 2019 23:49:16 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c/+gPxkT2a4IH0bH9cKQhhedBxEQ0Z1lEVgKbX5oSVs=;
 b=WzlG0GhTBDvKQR8R1QOM3xVhdnKG4EcN20n4vffUQjHDeKZG+fJmvukOlZZpYruS33qTBHPWeh0bo8M47pBTj8StWTR8Ut06XlwODcFUt1fEvVccdOCfbvtUqS7XI6WSkVsHE73844Q0CZNQXHWgMKC/cPwfBCKmJPNkO/fkvj8=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4207.namprd04.prod.outlook.com (52.135.71.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Tue, 14 May 2019 15:49:10 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 15:49:10 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-cli: align comments for struct telemetry_log_page_hdr
Thread-Topic: [PATCH] nvme-cli: align comments for struct
 telemetry_log_page_hdr
Thread-Index: AQHVCmfK82wZITVEuEGNxgPaaoSoUg==
Date: Tue, 14 May 2019 15:49:09 +0000
Message-ID: <SN6PR04MB452778D43C1D35AE8C4503F786080@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <1557846878-25595-1-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1985d756-9085-43ea-caac-08d6d883b490
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4207; 
x-ms-traffictypediagnostic: SN6PR04MB4207:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB420787D9130F3994DB7290DC86080@SN6PR04MB4207.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(136003)(39860400002)(376002)(346002)(189003)(199004)(14454004)(66476007)(66556008)(102836004)(6436002)(8676002)(81156014)(81166006)(55016002)(2906002)(86362001)(25786009)(7736002)(486006)(52536014)(76116006)(26005)(3846002)(6116002)(91956017)(73956011)(186003)(446003)(476003)(66946007)(305945005)(66446008)(64756008)(53546011)(5660300002)(6506007)(74316002)(6246003)(68736007)(4326008)(71190400001)(256004)(8936002)(66066001)(9686003)(71200400001)(53936002)(229853002)(72206003)(110136005)(2501003)(316002)(7696005)(33656002)(478600001)(99286004)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4207;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: B7iS0lI7yCfxfWm4mSJAJp5KBDfsY3L0QensNJHvYX9vrPnzZVH4pDV/OhLMq/ILmqTTn0og1DSPhS9tFZyeUs8XXduXycjc1072mS3LfKX/8fWWtLuW2qSjER4evd1ajFavTYz4u8bnRyTeQVXk2vhe1ZFw8VtuLCIra+05uewPv70/euu9L1V88r/IaO9dnYjO1Vdsrv/V8KBQ0e/EppS/SSVXmjtpBLGkROUog21wGn1jgr/wVW7gPDOK9qslkEXqqethVZwq9omurNq9CxLlxl5PNdDmh6wky6l5G1LhpCzHB+X5g7sWnh6taFxBYEWh8p89H1h05+ooUMmAr2jplRwFXvdsSG+x/2fWuCbTPXHbL93vmlazU+/65quivYVF9HCw6OvDWQsLJYc/murkXNn+15Sc6w/BNpbeDKk=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1985d756-9085-43ea-caac-08d6d883b490
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 15:49:09.9976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_084919_369229_75573F90 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 05/14/2019 08:14 AM, Akinobu Mita wrote:
> Align the field member comments for struct telemetry_log_page_hdr.
> This also uses tabs instead of spaces to align field members.
>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
> Suggested-by: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>   linux/nvme.h | 22 +++++++++++-----------
>   1 file changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/linux/nvme.h b/linux/nvme.h
> index 2c840b9..118095a 100644
> --- a/linux/nvme.h
> +++ b/linux/nvme.h
> @@ -427,17 +427,17 @@ struct nvme_id_nvmset {
>   };
>
>   struct nvme_telemetry_log_page_hdr {
> -	__u8    lpi; /* Log page identifier */
> -	__u8    rsvd[4];
> -	__u8    iee_oui[3];
> -	__le16  dalb1; /* Data area 1 last block */
> -	__le16  dalb2; /* Data area 2 last block */
> -	__le16  dalb3; /* Data area 3 last block */
> -	__u8    rsvd1[368];
> -	__u8    ctrlavail; /* Controller initiated data avail?*/
> -	__u8    ctrldgn; /* Controller initiated telemetry Data Gen # */
> -	__u8    rsnident[128];
> -	__u8    telemetry_dataarea[0];
> +	__u8	lpi;		/* Log page identifier */
> +	__u8	rsvd[4];
> +	__u8	iee_oui[3];
> +	__le16	dalb1;		/* Data area 1 last block */
> +	__le16	dalb2;		/* Data area 2 last block */
> +	__le16	dalb3;		/* Data area 3 last block */
> +	__u8	rsvd1[368];
> +	__u8	ctrlavail;	/* Controller initiated data avail? */
> +	__u8	ctrldgn;	/* Controller initiated telemetry Data Gen # */
> +	__u8	rsnident[128];
> +	__u8	telemetry_dataarea[0];
>   };
>
>   struct nvme_endurance_group_log {
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
