Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4BB7D21C
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 01:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RWTGP61vOBAV3ut0tfIibHSpCAE9mAhfw0tk6iNuumg=; b=WcthgJuMHr9Mk4
	xcfpsDT4SaFxeKtdqNqN4u+3QRWLhJZAU6iMIh8IizNQ/tOpR2FVypUGm6RMOX548iUR+1lmQpS0n
	Nr9mE/4INAzQwRTbSKlbj5teJH04yEAbsl7em/Et5QqmAZRJoK4RS2fRLYNG72vH3w00p/EKY8+xd
	kqVUG5XmSlw8+JeX9gu5MUXJCzVTOcmeBMBgD4ACCt/6IESerCY4LYAC7h563cIY1oY28xd6csJjC
	C+ksFhjyrMTWo/fH1wsNTY3KdIIX1hwJWiCrgGeNWUbvBiN0dZgWwqmUebyd7Dvx0gy3HBsmD061h
	EUrGjjGe3od2HaGlse6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsyPF-0005IK-QY; Wed, 31 Jul 2019 23:53:17 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsyPA-0005I0-QP
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 23:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564617192; x=1596153192;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Gj+5nV1gonmrto+wYzGA6hOQ5M2UshwSuk9mLb2oaZ0=;
 b=gYysmrBacAJntidmz9GH7/T5ki+DfsCV285YcJUKuJkcVWfHGvMIpN+r
 vy/4KBRSN8tRG862RNOsTKTA2YLUm65I7szpAf7/S8GLt3LPDI2GenyKK
 wMBWb4W6uXD5uD2e/YRMlSKgTIAVDM6yymS82FKUtSdYs1C42k0elp8d9
 pxyubiNW8XK3FOzwS4Gxhj9XbH7Ckna9KQcnTEUsa3dMsr1qZYiCYqF96
 6AmsfxASpxuxFh27whCOUJIdXAhR1aQfx7x607vOogrccGbNspWz8jfjf
 ProgM6REztjQ+QwrPSISPN/hPuv+4YE+8WIiE73GYl18g5sMiMQRPe6+Z Q==;
IronPort-SDR: ZTdF8SKlYPR3k01bjhig8KcQn2X3mRzMxMpBNMJKq/5oyT9npbrxFEJWEC6jnU2CNACrntnGU/
 4IIIwxg5EFAWnKhI2X5nYjAnebmOqdpQD7ggB379K+ymc50VroXNZVjC6ZNwdggAynxtHpsKKa
 ByS7Sscn7KolkNxghQxYovELiW3Pw6AqLoMED0AlOyZa8KBx+J6yYSCdrcZxbJbvsCNC29rv5Q
 9xIYX4TE+lc9jyu/p5B4ELCH15/ajHshZQj1YY3PoBRlaCuL7JkCs5LTaZNH723cmlj1npaUEA
 VjQ=
X-IronPort-AV: E=Sophos;i="5.64,332,1559491200"; d="scan'208";a="221114182"
Received: from mail-sn1nam01lp2054.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.54])
 by ob1.hgst.iphmx.com with ESMTP; 01 Aug 2019 07:53:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d3knWKlMZwjjJ+Mdz3IwwckEH7uhlhP/echovsBRpoaH7mXqEfry1HFGg8hqcaCWqeIoMQ2ZD0EzubmQZEPlP87SpRBxp0clzCNj2MCbyXco5EGbYjP1Dr3ROwq7gK5j6Osly5wqnrGvTd2Xx2FjCUmkMLqNklM8dl5KPgAJrNo2n88aV5TgUN97H6ibyV9jB11t1EchW7q6mYRLvzKlphjV+4I5dS8V4CJThFAATbYsUUj4JTG7MgNjf92rXQ5FNMR2IUJ9g+MJAKzNZ06IIi5Cy5aYm2gjkj3/Ou+s4Ar8Rr/BYJgUn8WpSwJQHgB2sBZwNq79ZZzgAREKTqnP2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nHqu+jHyNHmaU89/0pPUoPfHbJUQHVPUGeEcpVTM03k=;
 b=cJLFL69N1HrxXQEOVFkMMenz6KGM6tdl3I/VhmN5Iy/QA2FHRANC6hCHUOHwt7ywVZieaiIq65M4n7LW8tfJDZ2QBXflnmOr8zb8ROXaTWyD26lomUAkr2Jts9xXpkB1Csu3IgpUQo17zM0E5i8N6Akdubi0NQjqwacCMqU0ARMwHL8vutb8noeKpJJR7QP5ZvmMI9NXTM5Kc+V9TA5IVy3MIESlielZ2R9TjgngTl6oqbBN6m/ERD/Nh939BKEfkt+Wo+MTcLQw/e7g3FzNm3J+19YkVHT7or+w5qFNfvj2E4TGjoEeA+JYMQqa+1KTCiyRXknj1ewLAFLBEXiIKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nHqu+jHyNHmaU89/0pPUoPfHbJUQHVPUGeEcpVTM03k=;
 b=n5VYgVmww+Xj4fijHSippbABR+obyxsD1SXkr5/AjMyJqPGb02Hb8CLm334VnBugpuebmpuFGQTYcmR1EROH2T91tkkaTAhpbuNoYD1l2Di0BWMxtqh7cvPkiR7jn1G2S6O6gqgBqmgqWMcCSlTjNvJPDBc0uNDiV9yXQHSjRnk=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4455.namprd04.prod.outlook.com (52.135.237.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 31 Jul 2019 23:53:09 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2136.010; Wed, 31 Jul 2019
 23:53:09 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Logan Gunthorpe <logang@deltatee.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v3 2/4] nvmet-loop: Flush nvme_delete_wq when removing the
 port
Thread-Topic: [PATCH v3 2/4] nvmet-loop: Flush nvme_delete_wq when removing
 the port
Thread-Index: AQHVR/iwlIUuBWVyrUKyRjod+n3jbw==
Date: Wed, 31 Jul 2019 23:53:09 +0000
Message-ID: <BYAPR04MB5749933ACEC902B934CA212586DF0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190731233534.4841-1-logang@deltatee.com>
 <20190731233534.4841-3-logang@deltatee.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6311538-a3ea-447a-3473-08d716123dc2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4455; 
x-ms-traffictypediagnostic: BYAPR04MB4455:
x-microsoft-antispam-prvs: <BYAPR04MB44558EB21D242728705FFF2E86DF0@BYAPR04MB4455.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(366004)(136003)(39860400002)(396003)(189003)(199004)(7696005)(71200400001)(446003)(316002)(6116002)(3846002)(74316002)(14444005)(26005)(71190400001)(66066001)(7736002)(14454004)(4326008)(53546011)(6246003)(2201001)(6506007)(486006)(186003)(305945005)(9686003)(229853002)(256004)(476003)(55016002)(8676002)(110136005)(33656002)(86362001)(8936002)(81156014)(5660300002)(81166006)(25786009)(54906003)(102836004)(66476007)(66556008)(53936002)(66946007)(2501003)(64756008)(66446008)(2906002)(99286004)(52536014)(68736007)(76116006)(478600001)(6436002)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4455;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FjSTM+ScJEOxb47PukbneDk8efDvD0tJRifbeLcs8aUXEurDNo2cTxHwLS7OUTygZPKK0yFVEW5Mcs6G+/chZlkj/0NZ0rrHgzicZw1ATiT2f0YQbnTrD151r8Qy0E1OBZirGH2LsvBbi+mC02q6LxkTBrhQxubFw1CgNA7R4DHCrMyS/1ZOp5/+eJksZAG3aHkr5RWbdSq6rQVDPgOkRLfBL3XA25WVbwck4K9yNl/mNU/nzD9U/WNcj9SxoaHckXoJaBSvt/4qL6KlEuEe7Q+aoNBbK9TJfeDvkgsyOjgaJNSh/yhyf7zinz8freNkr1VcsrE2/Kq9z73vg0N0Car9prdiTHqbYCZGK9RdjyGbGdIIayPEO6Wgbdl+QbsHlXQ2274rsuPPYREnYGqSbLZlnKWGU5RZ/KcsVd4iHg4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6311538-a3ea-447a-3473-08d716123dc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 23:53:09.6375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4455
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_165312_969903_C6C48686 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by : Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 07/31/2019 04:35 PM, Logan Gunthorpe wrote:
> After calling nvme_loop_delete_ctrl(), the controllers will not
> yet be deleted because nvme_delete_ctrl() only schedules work
> to do the delete.
>
> This means a race can occur if a port is removed but there
> are still active controllers trying to access that memory.
>
> To fix this, flush the nvme_delete_wq before returning from
> nvme_loop_remove_port() so that any controllers that might
> be in the process of being deleted won't access a freed port.
>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/target/loop.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
> index b16dc3981c69..0940c5024a34 100644
> --- a/drivers/nvme/target/loop.c
> +++ b/drivers/nvme/target/loop.c
> @@ -654,6 +654,14 @@ static void nvme_loop_remove_port(struct nvmet_port *port)
>   	mutex_lock(&nvme_loop_ports_mutex);
>   	list_del_init(&port->entry);
>   	mutex_unlock(&nvme_loop_ports_mutex);
> +
> +	/*
> +	 * Ensure any ctrls that are in the process of being
> +	 * deleted are in fact deleted before we return
> +	 * and free the port. This is to prevent active
> +	 * ctrls from using a port after it's freed.
> +	 */
> +	flush_workqueue(nvme_delete_wq);
>   }
>
>   static const struct nvmet_fabrics_ops nvme_loop_ops = {
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
