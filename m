Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD55902B9
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 15:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++D5lIyUsKp8FQZc6XDaRnfs6Gicf6GeeYLoam7F5fs=; b=cv1XxNixTnE1gf
	QjNoDts5r5l6HykZBdlGB8sy+oFvgHFtgVOs+cgf++L1tMXesnWlx8SoUU/UX5jVFf4s7vojc/3ue
	k10a1uPG97scEMhMo4pNzPr67en4QaiuF2N3YN9EGrUPn4FK5J/Rm0cjy0bKJo2B4wAf2JSL5oAM3
	8axa7KS5cdzrEBtwsUCmDocZYgc8VJFlPK62SYS2rFn4WT0g0VkCedyVc/tEIkaICZ6naRv1PEP+M
	UmqXle8sXUcKlpOSa3zHs4sTa9RODBKR+gnvRrtlCyMHueHoNo6MiIkw64fgBElAD3w/LsslHR55K
	8zQlIbgcDhAE3IhXHTqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyc5a-0006g7-Tw; Fri, 16 Aug 2019 13:16:19 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyc5T-0006fk-24
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 13:16:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0CE1A68B05; Fri, 16 Aug 2019 15:16:07 +0200 (CEST)
Date: Fri, 16 Aug 2019 15:16:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marta Rybczynska <mrybczyn@kalray.eu>
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
Message-ID: <20190816131606.GA26191@lst.de>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_061611_254137_DCCA6166 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, Samuel Jones <sjones@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Sorry for not replying to the earlier version, and thanks for doing
this work.

I wonder if instead of using our own structure we'd just use
a full nvme SQE for the input and CQE for that output.  Even if we
reserve a few fields that means we are ready for any newly used
field (at least until the SQE/CQE sizes are expanded..).

On Fri, Aug 16, 2019 at 11:47:21AM +0200, Marta Rybczynska wrote:
> It is not possible to get 64-bit results from the passthru commands,
> what prevents from getting for the Capabilities (CAP) property value.
> 
> As a result, it is not possible to implement IOL's NVMe Conformance
> test 4.3 Case 1 for Fabrics targets [1] (page 123).

Not that I'm not sure passing through fabrics commands is an all that
good idea.  But we have pending NVMe TPs that use 64-bit result
values as well, so this seems like a good idea in general.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
