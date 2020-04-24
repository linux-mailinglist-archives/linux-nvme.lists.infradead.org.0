Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A751B6EAF
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Apr 2020 09:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFCodhDU/NqhYeiMoFt41OBHdF62b5mLaMFO4EuqZoM=; b=KpWjwq6gKLZjH7
	a0W/n4WANWsA0rojJUMvCT/W1AM9piBUSQh2GLXJwZ1P18PNMqX2lV0xTUwYYL44x+3UXcK5DE8Ue
	OSH0vcGMraChVMGZR2xUT+KK18vADNzKR770g0Cy2pZy+39UsItvToSCevc056Qzgql6ygS68xU+7
	SMFJE3BnRYCwxluF9HG3fzXpmpa3AT4ymqJahYotOLPOfdBXyymIdwSFHAAxJ+C32fBCN43kVe/rH
	K9E6n2LGsI28+ND3MAE9N2DKYcNfU8dlfzu2DEplSvmI6zfgb2w3ayBaTFti4teLUH4ZbfVOz6nT4
	ji2JRopKkfgXz0rfcMbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsVw-0005Fa-HJ; Fri, 24 Apr 2020 07:12:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsVs-0005EK-Q3
 for linux-nvme@lists.infradead.org; Fri, 24 Apr 2020 07:12:42 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2435168CEE; Fri, 24 Apr 2020 09:12:38 +0200 (CEST)
Date: Fri, 24 Apr 2020 09:12:37 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 13/17] nvme: Add Metadata Capabilities enumerations
Message-ID: <20200424071237.GD24059@lst.de>
References: <20200327171545.98970-1-maxg@mellanox.com>
 <20200327171545.98970-15-maxg@mellanox.com> <20200421152407.GD10837@lst.de>
 <b4f77666-6be9-121d-4ca1-fc1887cbd92e@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4f77666-6be9-121d-4ca1-fc1887cbd92e@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_001240_994299_DE8044C8 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 idanb@mellanox.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 03:09:47PM +0300, Max Gurtovoy wrote:
>
> On 4/21/2020 6:24 PM, Christoph Hellwig wrote:
>> On Fri, Mar 27, 2020 at 08:15:41PM +0300, Max Gurtovoy wrote:
>>> From: Israel Rukshin <israelr@mellanox.com>
>>>
>>> The enumerations will be used to expose the namespace metadata format by
>>> the target.
>>>
>>> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
>>> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
>> I'd be tempted to use a separate enum and add a comment to which field
>> this relates.
>
> something like:
>
> +/* Metadata Capabilities */
> +enum {
> +=A0=A0=A0=A0=A0=A0 /* supports metadata being transferred as part of an =
extended LBA */
> +=A0=A0=A0=A0=A0=A0 NVME_NS_MC_META_EXT=A0=A0=A0=A0 =3D 1 << 0,
> +=A0=A0=A0=A0=A0=A0 /* supports metadata being transferred as part of a s=
eparate =

> buffer */
> +=A0=A0=A0=A0=A0=A0 NVME_NS_MC_META_BUF=A0=A0=A0=A0 =3D 1 << 1,
> +};

What about:

/* Identify Namespace Metadata Capabilities (MC): */
enum {
	NVME_MC_METADATA_PTR	=3D (1 << 0),
	NVME_MC_EXTENDED_LBA	=3D (1 << 1),
};


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
