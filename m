Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14CA37FBE
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 23:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=mDYvsSw/6sZNhKP6d2Xxtazgs5rOaI28gRk6+JCk8Os=; b=ObS8+DejqfOzln
	gG0RZFDZPZ7O3yRhLMWqqFheD+D+2tcfl3XIoTAa8+qQKs3RW7PiPd2wIpPevtlK+yZW2RJDw8DYf
	xJY0YzRH+DPL1X4BTorutMp5w0QdhOwMMgFbDwvAxu2o3/HMSvOXyJ+DUTvok/CyyNZRVudTBiNoX
	vuuY9p4bwGDvIJxtaP4Bfb0jCD92cdMJcYwFjp+gKy6aC8oG71RvL0BnSdiHrmI8y9Ye+vtQXsIcN
	vDzFYDe28zT7VbTR0f911QpD/rVL+TPcg+ns2/rkMdHOOghPj9JqhCor91gQuIBOKbCebr+KT6vJz
	+3ZYjULDpJZGjGEu/UbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hZ07k-00033g-7C; Thu, 06 Jun 2019 21:40:40 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ07e-00033D-Sm
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 21:40:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559857250; x=1591393250;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=b93HXviB2hLLFgnr/43cpuYjiW7AfiVOH4h95rsYW1E=;
 b=FVAUK43q5QSnXefhBxj/ykRwtiRVw8qjtU76mvCGq2SqHA0JNsBqsoYg
 74cDLPDY/lvlme++MxcfAIVPzZ1iV1TSYPlDVpwNNQZaTgKTwD1xVzNOA
 95acZdAGyaWmeOrdvgSeaAx274qkbyt3j9OaPG+QyGEyvwa1Drjt/ZBb/
 EcFw/EeItsyKsdZKthgc5LSD6gmBRngU85KJjL7qqNzo6pn7DSB5tfryv
 49Y5MQiD4iDtFg2xJLoLo4I9wd6vAGw8WwUSPceCb9NGfp0CVrm6wXHSR
 f2tcW7Lh3iZ57mccxRGbrTOaPpwyyadyktjKsr/OceuFSXqwufAAMz7g9 A==;
X-IronPort-AV: E=Sophos;i="5.63,560,1557158400"; d="scan'208";a="209618712"
Received: from mail-co1nam04lp2058.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.58])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 05:40:45 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3LjylQQ81ZfffsGcCObo3botLQeY55ORd8i2yOPiTo4=;
 b=PjcpVXjwpoxkQyukDj4es+1LhHpeQ+uDeff1dBp0R+xAHyJFJkN0+KBE9EiFuAByKFqjYYGmIAmAuQxTxJ3AwY3aYi83DEbSsoDMYVkJWAtKE0aM1KqCt3qirDqpXau05Vucv6IplKlTTmgPNXhGbx9etN7VeG98XRARrpi4mHg=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4869.namprd04.prod.outlook.com (52.135.232.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.13; Thu, 6 Jun 2019 21:40:29 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 21:40:29 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, Keith Busch <keith.busch@intel.com>, 
 Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] nvme: Introduce NVMe 1.4 Identify Namespace fields in
 struct nvme_id_ns
Thread-Topic: [PATCH 1/2] nvme: Introduce NVMe 1.4 Identify Namespace fields
 in struct nvme_id_ns
Thread-Index: AQHVHK7p5NP2fkEkcUqFXb4VOaXnVQ==
Date: Thu, 6 Jun 2019 21:40:29 +0000
Message-ID: <BYAPR04MB57491B1A62AB8B917472232486170@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190606212854.122478-1-bvanassche@acm.org>
 <20190606212854.122478-2-bvanassche@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3a99f76-5277-48ed-0887-08d6eac79881
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4869; 
x-ms-traffictypediagnostic: BYAPR04MB4869:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4869B782BE7346F86096F61586170@BYAPR04MB4869.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(346002)(136003)(366004)(376002)(396003)(199004)(189003)(25786009)(14444005)(7696005)(55016002)(68736007)(486006)(9686003)(256004)(76116006)(14454004)(2906002)(74316002)(3846002)(229853002)(64756008)(66556008)(66446008)(6116002)(110136005)(99286004)(66476007)(66946007)(54906003)(53936002)(476003)(446003)(6246003)(305945005)(186003)(7736002)(52536014)(316002)(72206003)(71190400001)(53546011)(6436002)(6506007)(33656002)(478600001)(71200400001)(81166006)(102836004)(26005)(5660300002)(81156014)(66066001)(8676002)(73956011)(4326008)(86362001)(8936002)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4869;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +ML9BMTBzhClGZIUKN6OfDwi9jQruAdJNfYA1F1SyNC2/Csfq0cK2JsLhlNw4/wQ/Cyz+HYxjA8MAUWeMNchOZGLLqU01Vtq9KZ1mOCqQT3xUHS13eJrhXEjeFBVdUE0SMuGEgyuq2I7Ddk/mKMPfAY+0GuHL+sPoTADPlWUzKnpdNP5xCNVQEoUwpijQOu+2AeD3aYTOebIYGSNYpI36BeSlPFjGItRpxYmCdNWqxjNoXuapYRct7BBIq+uZto89Y/9BTF0aF468/oIiGBamYD3/5e3REq/xQU11fnZwMo5cmUz9lvLwnxtypm2IXf1nD5s/BxaVTsdhECKOZwoJOlYLNoZ304UhhYeLEPEQqHWnWaGV7TmXAet69T7qEJwsd4NYJLYvznDPO3jL2HoLA6BRvX0Cn0cYV8e592BFNg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3a99f76-5277-48ed-0887-08d6eac79881
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 21:40:29.6159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4869
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_144035_064795_D2509A3F 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Hannes Reinecke <hare@suse.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 06/06/2019 02:29 PM, Bart Van Assche wrote:
> Several new fields have been introduced in version 1.4 of the NVMe spec
> at offsets that were defined as reserved in version 1.3d of the NVMe
> spec. Update the definition of the nvme_id_ns data structure such that
> it is in sync with version 1.4 of the NVMe spec.
>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> ---
>   include/linux/nvme.h | 12 +++++++++---
>   1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/include/linux/nvme.h b/include/linux/nvme.h
> index 8028adacaff3..2b5072ec4511 100644
> --- a/include/linux/nvme.h
> +++ b/include/linux/nvme.h
> @@ -315,7 +315,7 @@ struct nvme_id_ns {
>   	__u8			nmic;
>   	__u8			rescap;
>   	__u8			fpi;
> -	__u8			rsvd33;
> +	__u8			dlfeat;
>   	__le16			nawun;
>   	__le16			nawupf;
>   	__le16			nacwu;
> @@ -324,11 +324,17 @@ struct nvme_id_ns {
>   	__le16			nabspf;
>   	__le16			noiob;
>   	__u8			nvmcap[16];
> -	__u8			rsvd64[28];
> +	__le16			npwg;
> +	__le16			npwa;
> +	__le16			npdg;
> +	__le16			npda;
> +	__le16			nows;
> +	__u8			rsvd74[18];
>   	__le32			anagrpid;
>   	__u8			rsvd96[3];
>   	__u8			nsattr;
> -	__u8			rsvd100[4];
> +	__le16			nvmsetid;
> +	__le16			endgid;
>   	__u8			nguid[16];
>   	__u8			eui64[8];
>   	struct nvme_lbaf	lbaf[16];
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
