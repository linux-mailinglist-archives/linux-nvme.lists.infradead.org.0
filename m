Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683B61A99F
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 23:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=qyXnt5P7yYcUOgItWRG9u+acYMeg4wEVlzIDRRvO5bk=; b=DvyC/JEy4/A1KR
	o0kM3fzvCWWztjPfGHipdx8GfoyN0JcbFumoObdH3P2u8fWgcRlLW3Xxnwo0Ccm5DgOLShO0cHzZn
	Twz+GvNqUs0xcfM3tMzm3825UE3ryrgN1eKVFk8EccVirjIvIArbLYNgyp1fYHUpYu96N6y6kzBwk
	5ALzq5pGL9vWMpJsxwfv272IejzO2U9W6BfqPyO70upN5KWlsz9OAo6dtYFiiMZRMPlMi3YwIiPQK
	arBbOwWAVR/9PNrBYeNUurPviRSIyndmMkqGCNw3r9p3W6SYQs5tDP577M3jCGwutPa0bvc2cD5V9
	lMXjXc+g4CfB8KSJHgNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPZss-00019v-Q2; Sat, 11 May 2019 21:50:22 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPZso-00019X-AR
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 21:50:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557611419; x=1589147419;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=7hKu0tQ2tf+t5YX9hAeo3vQ/M/gRuDuyoe4wVUYPAG8=;
 b=EVTxGM+kPGDzfQtphTY/9Ffoi/2uwyvBOWOUTrDKSQJtEymXwVSwIAXg
 ApIZxVfwDjoAy1viU6N7aBKLHIYmXxkL8cThlyFlSvVUKH6BMTH7zGuAG
 M+2GXwFrnC/M1d++XazZmzaOk3cWWwgGo75fxGGHKoKzKnG7LzcbQjpME
 zLNFOqg50aALwE8/xfvrWmPrCbBDx6CfA/PPZlAYei3EtVtvajewxcttQ
 g/DzAdQiNTbKY2Hg9Nwd3rXVslF9RhlvhV5V1mgaCJly6tR6zcS4EbEPn
 XTsrx/VMOSMfLHFRMMYWs+Cp8irOyOM4iQmvDm67Ny/hMyHjeOUZUgx0B Q==;
X-IronPort-AV: E=Sophos;i="5.60,459,1549900800"; d="scan'208";a="113004991"
Received: from mail-dm3nam03lp2052.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.52])
 by ob1.hgst.iphmx.com with ESMTP; 12 May 2019 05:50:14 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sWUw40FVdws9H5luLhKFdrHSebWs1igYaU4u0RvIWC4=;
 b=nbbTnENCYGJuRy1OHgRbpHbniFaLyRLyq2vn/hmBg0+a5+8N7MPxoAsKiFDxhjWHE9TAznDfwOfd4efTZFNaVkAs0OJeSXpBGHAJQGvDpB5X6biNZ9o1Z5CkRiwQ0h3+iMpN3NkgsPZdlIMuED5hjNRcp7YjtHnNgiL/guJklho=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB3887.namprd04.prod.outlook.com (52.135.81.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Sat, 11 May 2019 21:50:12 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.016; Sat, 11 May 2019
 21:50:12 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 2/2] nvme-fabrics: Remove unused argument
Thread-Topic: [PATCH 2/2] nvme-fabrics: Remove unused argument
Thread-Index: AQHVB/+IHbli+LEaWkKsxL03w3YExA==
Date: Sat, 11 May 2019 21:50:12 +0000
Message-ID: <SN6PR04MB4527A361940ECE60AFE846E5860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
 <20190511134255.6790-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:1052:134a:6e3b:f2ba]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 047af226-02fe-4c0f-e63c-08d6d65aa4f0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB3887; 
x-ms-traffictypediagnostic: SN6PR04MB3887:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB38875570906E2B06950E61CE860D0@SN6PR04MB3887.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:119;
x-forefront-prvs: 00342DD5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(366004)(376002)(39860400002)(396003)(199004)(189003)(64756008)(8676002)(81156014)(53936002)(86362001)(66476007)(53546011)(6506007)(81166006)(8936002)(102836004)(256004)(66446008)(316002)(6116002)(7736002)(9686003)(486006)(476003)(2906002)(6246003)(305945005)(99286004)(74316002)(76176011)(72206003)(54906003)(7696005)(478600001)(46003)(73956011)(14454004)(186003)(52536014)(91956017)(66946007)(446003)(25786009)(4326008)(66556008)(6436002)(76116006)(71200400001)(71190400001)(55016002)(5660300002)(110136005)(33656002)(2501003)(229853002)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3887;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pcZRMqZyAuxPGzZq3jtld8+bE7n05uArZ2YNVz2QsLPgqj2mGqHKhpaeWqa46+KST/mEvnjYdxoHr2oHkPJFhfXdkC3BRJ9kvj+KBGBWHblHWczjdrrDQulEW/3ZGx9Ff1DdWs2eezYP962o6nCcO9gifSRVpF6+eI1Ov12uH3XvSsXTtXUCi8MxOOL2lkEucUk3pNX05Zcx8w1izc78O2Zy4OIj2d2/RB/sDmluUhIjneBZZUv4DlHRT5RAgeb9oWUAaa3p89bCZkuD09rOERK8K9pu9dx5i9K3BOdwFwQtD7QNWGjNzn+PagTEaIJ3ORZOU0pr6fgQs+82753cxBHMJcadh9W5b4xdan+dibPgOvli8ntVyK3cWYrMYZzjuk/ZxMEfBxuYN0dF5Bzprc6EZM3XSg6/JGb+97QLfk8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 047af226-02fe-4c0f-e63c-08d6d65aa4f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2019 21:50:12.0854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3887
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_145018_444779_5F98594B 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Variable "count" use removed by  any commit ?

Or it is been like that since the introduction of this function ?

On 5/11/19 6:43 AM, Minwoo Im wrote:
> The variable 'count' is not currently used by nvmf_create_ctrl(), so
> remove it.
>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  drivers/nvme/host/fabrics.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
> index 592d1e61ef7e..5838f7cd53ac 100644
> --- a/drivers/nvme/host/fabrics.c
> +++ b/drivers/nvme/host/fabrics.c
> @@ -978,7 +978,7 @@ EXPORT_SYMBOL_GPL(nvmf_free_options);
>  				 NVMF_OPT_DISABLE_SQFLOW)
>  
>  static struct nvme_ctrl *
> -nvmf_create_ctrl(struct device *dev, const char *buf, size_t count)
> +nvmf_create_ctrl(struct device *dev, const char *buf)
>  {
>  	struct nvmf_ctrl_options *opts;
>  	struct nvmf_transport_ops *ops;
> @@ -1073,7 +1073,7 @@ static ssize_t nvmf_dev_write(struct file *file, const char __user *ubuf,
>  		goto out_unlock;
>  	}
>  
> -	ctrl = nvmf_create_ctrl(nvmf_device, buf, count);
> +	ctrl = nvmf_create_ctrl(nvmf_device, buf);
>  	if (IS_ERR(ctrl)) {
>  		ret = PTR_ERR(ctrl);
>  		goto out_unlock;



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
