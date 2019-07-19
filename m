Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE6F6D7E3
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRKhO4GdF4FKKCzs4deClQpcM24GTO1+3iCwVvrKGK8=; b=jE1p/f7MDfHI1H
	ScgUVcLnAWH93KX7gxpeYW1gQJABI9XTQKOHrJO33dUJZ00tZc0aKVnqVVSGZyZF6uawxYRoUsD9W
	W/mkheW5WJvkM9xE1HBn5wcL1BQwS/+RB/3ck5gXrNBPro7IbHly7/r2KAE8sFAPaQHI2HU0l+PUY
	Q4FM257d1/QsPrfcYc7vPGmkMzntDdPevpJhILPJc1/EcAD2uY7T2ExFSrlz1yjlbz7lB0GiNCEBX
	y3tSC6PK/eKGMb+E3MsJBPUeJDMTXD98Xd6ePQ2DYd6/SoMYZFrtm8P8HqlGJtVKhu5akj1d1SVwb
	j5PshrbMGCFGhqOOXjTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoH0z-0006kc-Ky; Fri, 19 Jul 2019 00:44:49 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoH0p-0006kF-Vc
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:44:41 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6J0iYGt020814;
 Thu, 18 Jul 2019 19:44:35 -0500
Message-ID: <50c35ab3db7745875476c0966bf191ab42de4dd1.camel@kernel.crashing.org>
Subject: Re: Duplicate tag error with 5.2
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Keith Busch <keith.busch@gmail.com>
Date: Fri, 19 Jul 2019 10:44:33 +1000
In-Reply-To: <BYAPR04MB581667EE6FB45D86881529E2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
 <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
 <8936e370b7ae272c8810780ee26ae3cebc8525b9.camel@kernel.crashing.org>
 <BYAPR04MB58169C5A4EF8DFB10C5C2148E7C80@BYAPR04MB5816.namprd04.prod.outlook.com>
 <c7235187d44618bc6636da0968c8037aebf50742.camel@kernel.crashing.org>
 <BYAPR04MB581667EE6FB45D86881529E2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_174440_167219_9B6E2700 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2019-07-19 at 00:39 +0000, Damien Le Moal wrote:
> On 2019/07/18 16:40, Benjamin Herrenschmidt wrote:
> > On Thu, 2019-07-18 at 07:13 +0000, Damien Le Moal wrote:
> > > > I can trigger the problem easily now running smartctl -c /dev/nvme0n1
> > > > and doing a bit of IOs. It seems to happen when the IO and Admin queue
> > > > use the same tag.
> > > 
> > > So isn't it that you are getting a completion cqe for an admin queue command in
> > > an IO completion queue ? Or the reverse ? Given how weird this NVMe device seems
> > > to be, it may be a possibility. In addition to the command ID (tag), if you
> > > print the cqe queue ID (le16_to_cpu(cqe->sq_id)), what do you see ?
> > 
> > Ah I can add code to validate that it's coming into the right queue,
> > good idea.
> 
> If the completion really shows up into the wrong queue, a fix may be simply to
> hack this code in nvme_handle_cqe():
> 
> 	req = blk_mq_tag_to_rq(*nvmeq->tags, cqe->command_id);
> 	trace_nvme_sq(req, cqe->sq_head, nvmeq->sq_tail);
> 	nvme_end_request(req, cqe->status, cqe->result);
> 
> to use a different nvmeq pointer, that is the one that corresponds to cqe->sq_id
> queue used for submission, which would lead to the correct tagset to be
> referenced and suppress the false "duplicate" tag issue. Locking of queues/hctx
> may need careful checking with such a change though.

But if the completion arrived in the wrong queue, wouldn't we be
missing the completions for admin requests and thus having all sort of
issues ?

Things are now solid with those two changes I've done locally, I'll
send a tentative patche:

 - Offset all tags in the IO queue with 32 so they don't overlap (I do
it at the point of writing into the submission queue, and undo it when
processing the CQs).

 - Reduce the IO queue depth by 32

Without the latter, I occasionally (but more rarely) still got the
error, but always with tags > 127. I suspect that not only Apple
implementation actually *uses* the tags we specify for their own
internal tracking, but they also only support values 0...127.

With those two changes it's been solid. Thankfully the resulting quirk
is reasonably simple and self contained to pci.c. I'll clean things up
and post.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
