Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB215D49
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 08:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFgXSkT+gMZ9qw4jj18ZtUwzu4OBiXPZPz5FHjddbPY=; b=sZTFJQSVRWZvpP
	apHZQynkwD25/3MeLnK4s9MoNQhoHl5Rrsvx31M2yhR2mrNF5Q9g98/LZ7e/47embrPWzO76MnfLJ
	kNL3V9JmPet0BCGMdTdDW+K0NjLPViOnwtRFJNM3vi4bgcUR2qeg21ZDCTmc0kPZTcBwirIUsvfpn
	7lIpvbJW31+WB3cZIXAPvO8NAEJbz9d7j9UHMRQBcc96EP8dOF8MJGI7kEVrD++xy0uBqhZkD92aX
	JhN+JSjBpFGdj6BiQnItCiXd9R5BCUL4kceycTURONgkjdVth1YRExYI6OpknSEHM5QG7+TH4POXE
	uiaoHiCtiNKdaCLBTlqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtT7-0002Ye-AT; Tue, 07 May 2019 06:20:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtT2-0002YA-6R
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 06:20:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 70BC7AD2C;
 Tue,  7 May 2019 06:20:35 +0000 (UTC)
Date: Tue, 7 May 2019 08:20:34 +0200
From: Johannes Thumshirn <jthumshirn@suse.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Message-ID: <20190507062034.GA3748@x250>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_232044_384067_0154DF13 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 01:54:09AM +0900, Minwoo Im wrote:
> If Johannes who wrote these tests agrees to not check output result from
> nvme-cli, I'll get rid of them.

Yes agreed. In the beginning I though of validating the nvme-cli output but
this would grow more and more filters, which makes it impractical.

-- =

Johannes Thumshirn                            SUSE Labs Filesystems
jthumshirn@suse.de                                +49 911 74053 689
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=FCrnberg
GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=FCrnberg)
Key fingerprint =3D EC38 9CAB C2C4 F25D 8600 D0D0 0393 969D 2D76 0850

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
