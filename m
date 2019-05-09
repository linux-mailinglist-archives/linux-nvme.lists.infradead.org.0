Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED0F18E3D
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 18:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Bq5MWT9Q0HhZfEJlGNatMGzq7FnnuUZ6Pzzlnkwpr+E=; b=pqEB57XxAesXRX
	3QySr9qG94+XP4ZL5UDy/m/1N5qoJPPFkRfm23npbvvxLl7gtN45jQ8SFNA8y9i7iyCIJjB0vVq64
	fZ4eivWsb4J/19JOJffZZS2KNSidMq4n6CVkjv/c1+pBteyMYKnghNYO8fIbBYr866nfhwxZVFiqI
	GVNhYDsfgH1l+lA9OC4NvnypTIzsoVh1wPQRBBp9aVJ5DBnBZFnLj8FpSlOA7n9nCjT5GqLY/CznU
	MyoMTHKXhNnujPlZ0WlJLobyEqSWK35+7uMyWx6PXT0Ce9rD6mrv7tzYScNyt+ipRyrv56Iwxfivj
	77R6JA6J+n0sgYZg8LAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOm3h-0001Ik-OK; Thu, 09 May 2019 16:38:13 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOm3b-0001II-E1
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 16:38:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557419887; x=1588955887;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=FeUVO1FiADLs8EWuh8Mm9Ajq+xA7C0ELbaabuvsEzms=;
 b=fy1RtLvslzpFK9WYoWnDA/Mo7yo3lvbO7myYNGodYe2/ZVnkDcJWXmDU
 IVabPc4SDLgbjs7bEqzjpcHLSKNEdxtphQCvASNTUzbjrJZAOPuh7Kdv5
 66kf7fZ61aq3xS7REdB37Jn5lq+N25vN8gLNqGnWgNLwrN3KaPfCGfKvg
 x6w0mauYFlvgToFpROwJMPoSbyR9mqfo+zNjrioyZm/FvfKtMwgX9zcZh
 KjRqFHXd2MYOrT89moSD5AUNMB3zLwcaRhFVD8GVQA0j9Pg+ACxGJ21Iq
 QVEsbwHIBKBrnFVSW8aMidVpq+JAOYGcfOj4S/MGLYCVQoOCEVOvR7d5z Q==;
X-IronPort-AV: E=Sophos;i="5.60,450,1549900800"; d="scan'208";a="213937423"
Received: from mail-dm3nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.55])
 by ob1.hgst.iphmx.com with ESMTP; 10 May 2019 00:38:05 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E6NHeMSGp+bfOruwe4Pbbjdhz2q/ZexNFEtm9s9+GnY=;
 b=L05CKKOgj8sey9OVTdM7lGJDrkAgr8bmv8zvsTm96ejz2/9MZRFOH6GLpk3JQp4PLGef2HKyeq8fjwudNoAOOfnjrvshyLLSaAudBc93Tr9P376Q6jbCVYwHJc3kPkX9Vrr2MszpiZadWqOYpJMJmHgqv7159Kg3t4rgvUQ4Vq8=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4797.namprd04.prod.outlook.com (52.135.122.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Thu, 9 May 2019 16:38:03 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Thu, 9 May 2019
 16:38:03 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-cli: cleanup comments for telemetry log structure
Thread-Topic: [PATCH] nvme-cli: cleanup comments for telemetry log structure
Thread-Index: AQHVBn39bXTyHjzDR06XaDqR0HLgfw==
Date: Thu, 9 May 2019 16:38:03 +0000
Message-ID: <SN6PR04MB4527F16CCAA2E44830391E3A86330@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <1557416597-21777-1-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e50563c3-f229-44b5-b1b1-08d6d49cb4d5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4797; 
x-ms-traffictypediagnostic: SN6PR04MB4797:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4797CA77A60245709BEA61E786330@SN6PR04MB4797.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:639;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(376002)(366004)(136003)(346002)(396003)(199004)(189003)(76116006)(91956017)(229853002)(186003)(8936002)(81166006)(26005)(81156014)(55016002)(53936002)(6116002)(86362001)(53546011)(99286004)(71190400001)(71200400001)(3846002)(110136005)(72206003)(54906003)(478600001)(68736007)(102836004)(6506007)(7696005)(25786009)(2906002)(76176011)(14454004)(66446008)(66946007)(305945005)(73956011)(64756008)(66476007)(66556008)(74316002)(52536014)(14444005)(316002)(6246003)(33656002)(5660300002)(6436002)(66066001)(476003)(486006)(8676002)(7736002)(9686003)(446003)(4326008)(2501003)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4797;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Uxf5idKJBPdC58Vm6Udm8ULsykybX96RJVAL7urIkCkM2cqKb3xfZJJxwNsowB3G+q2elLh8TDks21+d/3ejEgXWL+ZbiZeMbH2f/UTw1U8aqXfhIui3OZA3ibtgSw86LuItPJOz9wL6lny6CIC2mvXLPrRZ0rfXbxYUV9l3gkqEEYVDLUCTBBPMiXTUL+uQKfg5LLDHBSr2GBrlm7tt+Ox89Rv8D7GI+51DOXU6+k7i40oE9IDVO/1ESbYnKw8ffeYkfRVoCITKnhHZrFUeK9wfhmN2ttbCq6+Y7MBaPJ4W4vwnRwUfk0p+fz/YvmSz+FGizv2zRnO5DGQ1TnbJzGzry3p/JSe7gMPqawQSiq/ploUn2h9M9kb1g8vRn0f2xO9FQsFrfA017D3seSg3HGw/9zvGHdkw+tjzYmZ4m7Q=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e50563c3-f229-44b5-b1b1-08d6d49cb4d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 16:38:03.2343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4797
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_093807_487930_89031DE1 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 05/09/2019 08:43 AM, Akinobu Mita wrote:
> This removes three comments for struct nvme_telemetry_log_page_hdr.
>
> - The comment on top of the definision doesn't describe more than the
>    struct name itself.
>
> - The rsvd1 field has already been verified.
>
> - The structures with trailing zero size array are commonly used in
>    nvme-cli, so we don't need special comment for telemetry_dataarea[0].
>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Kenneth Heitke <kenneth.heitke@intel.com>
> Suggested-by: Kenneth Heitke <kenneth.heitke@intel.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>   linux/nvme.h | 10 +---------
>   1 file changed, 1 insertion(+), 9 deletions(-)
>
> diff --git a/linux/nvme.h b/linux/nvme.h
> index f6d7341..2c840b9 100644
> --- a/linux/nvme.h
> +++ b/linux/nvme.h
> @@ -426,9 +426,6 @@ struct nvme_id_nvmset {
>   	struct nvme_nvmset_attr_entry	ent[NVME_MAX_NVMSET];
>   };
>
> -/* Derived from 1.3a Figure 101: Get Log Page =96 Telemetry Host
> - * -Initiated Log (Log Identifier 07h)
> - */
>   struct nvme_telemetry_log_page_hdr {
>   	__u8    lpi; /* Log page identifier */
>   	__u8    rsvd[4];
> @@ -436,15 +433,10 @@ struct nvme_telemetry_log_page_hdr {
>   	__le16  dalb1; /* Data area 1 last block */
>   	__le16  dalb2; /* Data area 2 last block */
>   	__le16  dalb3; /* Data area 3 last block */
> -	__u8    rsvd1[368]; /* TODO verify */
> +	__u8    rsvd1[368];
>   	__u8    ctrlavail; /* Controller initiated data avail?*/
>   	__u8    ctrldgn; /* Controller initiated telemetry Data Gen # */
>   	__u8    rsnident[128];
> -	/* We'll have to double fetch so we can get the header,
> -	 * parse dalb1->3 determine how much size we need for the
> -	 * log then alloc below. Or just do a secondary non-struct
> -	 * allocation.
> -	 */
>   	__u8    telemetry_dataarea[0];
>   };
>
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
