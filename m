Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1288BF20
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 19:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuhZgH7La8QtrhlHBixQaKzd2eETWXBdsHdFF5rlT9w=; b=Ng3QgjhHSSDjZK
	hSr3AG/8tzDeb5NJwTnnaJF4UA+UTTyUGqnBxkVP4gAfzs/2/z8MgpvVM2skR7VKcPBrTwRNYfzXm
	jYpefVplrgiWJ8rTlxB6z9rYi0K1TTYob1NSHe18RPPumCrl4/gbd16vpktXsm60WdwZ4eN8CLV8E
	88i2thDyjze/YmJsjnP5DMvTgJiF9Y5StpyjHqvLicXMRIHPO7j/GuYPs+HyHP/lwS28jB+psFvcs
	YncT9HevKdFhtAeTWNRy+b+YUzk1f7cG12xD199XE4mfpZzFCrF1zF9T0w9lU12UhRR4g/VQF2nuM
	N41qScLDkgn1PtMBOQSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaBJ-0008F9-8k; Tue, 13 Aug 2019 17:01:57 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaBA-0008Eq-C1
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 17:01:49 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9D0E968B02; Tue, 13 Aug 2019 19:01:44 +0200 (CEST)
Date: Tue, 13 Aug 2019 19:01:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCHv3] nvme: Return BLK_STS_TARGET if the DNR bit is set
Message-ID: <20190813170144.GA10269@lst.de>
References: <20190812075147.79598-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812075147.79598-1-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100148_564181_BC6CFB3C 
X-CRM114-Status: UNSURE (   9.88  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 09:51:47AM +0200, Hannes Reinecke wrote:
> If the DNR bit is set we should not retry the command, even if
> the standard status evaluation indicates so.

What problem is this even trying to solve?  Nothing in the
documentation of BLK_STS_TARGET says it should be retried any more
or less than other error code.

If you really care about a retryable vs not retryable distinction
at the block layer we need to propagate the equivalent of the DNR
bit.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
