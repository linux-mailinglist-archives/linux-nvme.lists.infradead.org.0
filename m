Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5251A2108A
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 00:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=pnAA5XpubWuvXdoXW3hfVRMm0c4+d6SIdDPD/KjOhBQ=; b=o6pfRpWGNz/26O
	wPISouGQSaYfETDku/m3kv8WRijfXD3heT7Tk6BjHIpsDQdi9Rd8JWQRuANqGl2lAjr/JCHyCN9mC
	pwnmrZcSChi9+iX83Se04B2QMYom4VJwecdGqy49cnZnqejYWQxi+q/IDy/45t+o6jHSc9Gm6sNWr
	h5Aq5zEYV+dIAKT/uT4vwiIyKCpNazfx9RELuYti7ECtzO9lDsSBahrSdC7p+X027a5n+qL10JTBl
	7vlXURFTYsR4+5wvMd9XusuXt707mPa8giYpmpPvizC7i05KXKdTs4auQD/Jq+VDXJEGbON07KpyG
	hJ3OJscb9cRcd35ornLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hROwB-0000Bw-Kf; Thu, 16 May 2019 22:33:19 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hROw4-0000Ba-MF
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 22:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558045992; x=1589581992;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=5S/u0i65pvJgHc/2Rxn1HwTx6db/hmBY0ZkSuBHbY40=;
 b=jFCFyFw716cKpiRVAG6t1NOJ2z6h26o4IAvuWuoAbKsWuwYIxAwOb9f5
 kakSulBmbaD1HizOMwt++mtindgltxz+WjBgXIdVpbvXGl9OTa8w9zRo/
 Gzikmwh1xQQKqZsIY8QKN7Tdm6aPbu20O0A4kvnzsXii6bXbUO7H7YIbZ
 jEspGB7u/RDqrYMrnSDr9DcQeuPL73VCVvF0bdq78NC6oy0mA8CO8R6AY
 Hmt1CJCY20o9b3Ewzb1P6mOf3Czr3DjASrIHGG1MAagR6JBgusWi6Pkin
 azQYLxqCShXfHMMSj6DzjKZlok0kc33abH2UGBJm+yy9DOJgfNsyloWaL Q==;
X-IronPort-AV: E=Sophos;i="5.60,477,1549900800"; d="scan'208";a="214589100"
Received: from mail-cys01nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.53])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2019 06:33:10 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMIwcmCz+RPvu7cwXOxvqWg+786Tjce2Nk5s96wJz5U=;
 b=s5ltbUd+iL9VTEU73Mcg6+U14B1Rw0jciKZ0NAVuEm019QUzuJv3pz6GkniBAWZxTq6Ma/+XnJdoC9D/e7Un61Wvbb3UFh0nV1HLMmXbd7/1umNSHxXnIneq0sbWzZjzkA210DsiTOol3ydv6pVm5iYispZIZ+rPGFfZGgIL5h8=
Received: from DM6PR04MB4521.namprd04.prod.outlook.com (20.176.105.142) by
 DM6PR04MB5260.namprd04.prod.outlook.com (20.178.25.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 22:33:08 +0000
Received: from DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef]) by DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 22:33:08 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/4] nvme: fix srcu locking on error return in
 nvme_get_ns_from_disk
Thread-Topic: [PATCH 1/4] nvme: fix srcu locking on error return in
 nvme_get_ns_from_disk
Thread-Index: AQHVDBhg7wMCdjdII0G4602Ab6/oUw==
Date: Thu, 16 May 2019 22:33:08 +0000
Message-ID: <DM6PR04MB4521A220822D01F4F5D2D80C860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
References: <20190516185036.17394-1-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42c7aaf4-cc71-4ada-dc6b-08d6da4e7875
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB5260; 
x-ms-traffictypediagnostic: DM6PR04MB5260:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB5260072A3E4A8291C0DFAA8E860A0@DM6PR04MB5260.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:392;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(346002)(376002)(136003)(396003)(366004)(199004)(189003)(5660300002)(8676002)(99286004)(68736007)(110136005)(2501003)(256004)(14444005)(14454004)(33656002)(54906003)(52536014)(478600001)(72206003)(66066001)(81166006)(81156014)(8936002)(55016002)(6116002)(2906002)(64756008)(66446008)(91956017)(446003)(6246003)(76176011)(66556008)(316002)(6506007)(7736002)(102836004)(66946007)(26005)(6436002)(9686003)(3846002)(305945005)(229853002)(7696005)(4326008)(74316002)(86362001)(71200400001)(71190400001)(76116006)(53546011)(25786009)(476003)(486006)(73956011)(66476007)(186003)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB5260;
 H:DM6PR04MB4521.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pxvQTup76+Qz+5FM6SBJVUZguBHZ6DIZL64fQtcz5a/fEiRbqd8F0wHckXH/Qc9dIgblT1Hlyxn++bysSS1SEYkz64LVFDHg5fRs/r/32dYUlkdakBtlYaEzQqr3tIOY6lhHgPG8cDx1PcMrc77Iz12gW72ZK8EV4qSWgSgfGsK53v8Y5qN52KYDEHHEwaPpsr7aNBgVbzrSBi2BcDBBZI5jSRD9EWpheQpCxrfsLiiaedIrSieM4bYHQ/P+6zmECbo6YXStZhg1XqYYvwhXT0BKLzovcSvUCXHm0E1cu0/CIHzY2gKe+7Q5q55aSg0m9aZTOC/NkNuMZ86rFmZBRONIkrTLKvyEjJd8+YWCj8dngkBPFGx7wkqMZRBC7i/b5AEYxilIqrffP3q3KWoz25OnhqmUlbDpYqvV3UXDT0k=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42c7aaf4-cc71-4ada-dc6b-08d6da4e7875
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 22:33:08.2048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5260
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_153312_915008_C2D20214 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kbusch@kernel.org" <kbusch@kernel.org>,
 "kenneth.heitke@intel.com" <kenneth.heitke@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/16/19 11:51 AM, Christoph Hellwig wrote:
> If we can't get a namespace don't leak the SRCU lock.  nvme_ioctl was
> working around this, but nvme_pr_command wasn't handling this properly.
> Just do what callers would usually expect.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/nvme/host/core.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index d7de0642c832..eb1c2c349014 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1361,9 +1361,14 @@ static struct nvme_ns *nvme_get_ns_from_disk(struct gendisk *disk,
>  {
>  #ifdef CONFIG_NVME_MULTIPATH
>  	if (disk->fops == &nvme_ns_head_ops) {
> +		struct nvme_ns *ns;
> +
>  		*head = disk->private_data;
>  		*srcu_idx = srcu_read_lock(&(*head)->srcu);
> -		return nvme_find_path(*head);
> +		ns = nvme_find_path(*head);
> +		if (!ns)
> +			srcu_read_unlock(&(*head)->srcu, *srcu_idx);
> +		return ns;
>  	}
>  #endif
>  	*head = NULL;
> @@ -1410,9 +1415,9 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>  
>  	ns = nvme_get_ns_from_disk(bdev->bd_disk, &head, &srcu_idx);
>  	if (unlikely(!ns))
> -		ret = -EWOULDBLOCK;
> -	else
> -		ret = nvme_ns_ioctl(ns, cmd, arg);
> +		return -EWOULDBLOCK;
> +
> +	ret = nvme_ns_ioctl(ns, cmd, arg);
>  	nvme_put_ns_from_disk(head, srcu_idx);
>  	return ret;
>  }



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
