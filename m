Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 561641C8E49
	for <lists+linux-nvme@lfdr.de>; Thu,  7 May 2020 16:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2R8MOi6FqIjwiyFK+3NmWdMoLBqOdlU5UzaE4Ycb0sA=; b=X+PgiBaR+T6Ll2
	Vy9n7STizYmDH3xH2KfhHss33qwVc8xL7d3WZ6eZSD9lkm5hwxVJ6uzVO19RZa0g3cc0iJFV38M/X
	7GGjY1xWP9sfq9Rw4MO5gMGE7zWk+I5rgIxaqd6GPx7W66vRCCVZDYR1RZvLkh7E8fn7bhMKcj0K9
	KQVgwJpQKCYf0zjHVuZ28Gpvw3GU8DadvI06YXejLAtehzACSkfSnb89Oztq5SXDKsLQObFjRIY8v
	SjxegVhjcDO0BsSRlzkAcxw6MidhCm+z7KPQTBjcJzMfhkPi1wkxgEVD6mXvGnC2AxX2ama2Q+nZf
	GPZG6eYtydTZ2mE7txMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhRP-0006IB-Lz; Thu, 07 May 2020 14:23:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhRL-0006Hp-1W
 for linux-nvme@lists.infradead.org; Thu, 07 May 2020 14:23:56 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E607520735;
 Thu,  7 May 2020 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588861434;
 bh=qfrepwu4z7mJ+qRPTYrVlfX9JavW3sOZRDQYLN7PCWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T7wSlNEnGO/RrSVzNoVMm070trpybufTNzQcgMsbukHCEKVsu0P4EojFvFITkb1cL
 pbmsPQqQkjnNuoTXXnKYRdZ8LS5/rMlJYya4x2/SJ/UdR4gxUBG7gaZQK0Pr4CBbTx
 K/7OG5eRWvUclPAPsu65COs8xd007aAVBjRKLhs4=
Date: Thu, 7 May 2020 07:23:52 -0700
From: Keith Busch <kbusch@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200507142352.GA2621422@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200506132429.GA21451@avx2>
 <2ecb88b5-b585-52ed-bb84-5b486868743a@huawei.com>
 <20200506143519.GA570@lst.de>
 <4155a814-798c-0c7e-5433-daf719c0345c@huawei.com>
 <20200506163104.GD12919@willie-the-truck>
 <3453193c-424b-1e4c-16be-279088612c68@arm.com>
 <efc85e9a-93a6-989b-b8d7-db83b5d74b96@huawei.com>
 <6673a108-c572-12ff-7ddd-b88147829615@huawei.com>
 <4dae5990-e81b-8b33-dafc-ee47e4f06b6a@arm.com>
 <e1643b53-d362-0b5e-573f-72f0ea249ebf@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e1643b53-d362-0b5e-573f-72f0ea249ebf@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_072355_099565_F4F13D99 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sagi@grimberg.me, Robin Murphy <robin.murphy@arm.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>, axboe@fb.com,
 Will Deacon <will@kernel.org>, Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 02:55:37PM +0100, John Garry wrote:
> On 07/05/2020 12:04, Robin Murphy wrote:
> > > [=A0 177.132810] DMA-API: nvme 0000:85:00.0: device driver tries to
> > > free DMA memor
> > > y it has not allocated [device address=3D0x00000000ef371000]
> > > [size=3D4096 bytes]
> > [...]
> > > [=A0 177.276322]=A0 debug_dma_unmap_page+0x6c/0x78
> > > [=A0 177.280487]=A0 nvme_unmap_data+0x7c/0x23c
> > > [=A0 177.284305]=A0 nvme_pci_complete_rq+0x28/0x58
> > =

> > OK, so there's clearly something amiss there. I would have suggested
> > next sticking the SMMU in passthrough to help focus on the DMA API
> > debugging, but since that "DMA address" looks suspiciously like a
> > physical address rather than an IOVA, I suspect that things might
> > suddenly appear to be working fine if you do...
> =

> OK, seems sensible. However it looks like this guy triggers the issue:
> =

> 324b494c2862 nvme-pci: Remove two-pass completions
> =

> With carrying the revert of $subject, it's a quick bisect to that patch.

That's weird. Do you see this with different nvme controllers? Does your
controller write the phase bit before writing the command id in the cqe?
Asking because this looks like we're seeing an older command id in the
cqe, and the only thing that patch you've bisected should do is remove a
delay between observing the new phase and reading the command id.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
