Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B961F79ED
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jun 2020 16:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Npln7OVdmDFSx696SJ2UHiWrWRrnFifmoZkpYXc4H84=; b=gry+r1ifx53tVA
	3hC8ONMjyza2CCG/6hse11m5ii+NPbp5ZIANuSp0ybv/pCa1Fh+HLC5E2eLRynlcCAmxOjxF6hQ0E
	zWzthv62LkmW0COvkoFITmGXtP6qoruKArQ1jo37Hvat4yw9Muc3pXXJtbSgY4AodfhC7xUyNNpMH
	bQ9VgVlhIwkpAQGZtbCVqJDpFVGYuhEZ5yP0t27hk2LFbm1AvHRUk+oGtT9xcabPNuTpGk2Nc3P0i
	SuZ+nSIXvEuFE4y2M2OEniKB9B6ZZO5f6nNMng7KadgyP74VAXysDPdhvs3mAM7TR4oq/ZfGEDsQd
	45fQtx2bPzCY5q9E8JvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjktu-0001U3-AH; Fri, 12 Jun 2020 14:43:22 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjktq-0001Ti-EB
 for linux-nvme@lists.infradead.org; Fri, 12 Jun 2020 14:43:19 +0000
IronPort-SDR: cIefuKjzCvyG+9GwtPmW3gtkrTcMordfQEkmOu9K7Q7nUHLxvyrgZu4DM+eVWuhcuTbVBN3h32
 KqqZjvrLXBxw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 07:43:16 -0700
IronPort-SDR: AqV/Emd7dj5trQzADEwOiVK5jTBxjiFqeQWTsO1wfmpBKAyfsNdqf5aUKKl4+MgIduiFz6DtTH
 eriRTpf2dKtQ==
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="307253098"
Received: from dfugate-mobl1.amr.corp.intel.com (HELO dwf-u18040)
 ([10.212.216.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 07:43:16 -0700
Message-ID: <e2c46dfec9e779d945088b025f833bcd4e29cc1e.camel@linux.intel.com>
Subject: Re: [PATCH] nvme: associate stripe size quirk with D4512
From: David Fugate <david.fugate@linux.intel.com>
To: Christoph Hellwig <hch@lst.de>
Date: Fri, 12 Jun 2020 08:43:15 -0600
In-Reply-To: <20200611054156.GB3518@lst.de>
References: <20200611033836.45701-1-david.fugate@linux.intel.com>
 <20200611054156.GB3518@lst.de>
Organization: Intel
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_074318_484696_F7A56EF3 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: david.fugate@linux.intel.com
Cc: kbusch@kernel.org, axboe@fb.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, david.fugate@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2020-06-11 at 07:41 +0200, Christoph Hellwig wrote:
> On Wed, Jun 10, 2020 at 09:38:36PM -0600, David Fugate wrote:
> > Intel's D4512 dual-port SSD is based on the older Intel P4500 SSDs
> > whose development predated the NOIOB feature. Based on a customer
> > request, the D4512's device ID was changed from the P4500s'. This
> > patch associates D4512's device ID with the stripe size quirk to
> > improve its performance.
> 
> NAK.  We've been told Intel forever that we need a standard quirk,
> and we actually do have way to expose this information in Identify
> now.
> Just kick your firmware engineers in the but to set the trivial field
> in Identify.

Thanks for the feedback Christoph. Our FW engineer for this product is
currently on vacation, but I'll relay your suggestion to see if it's
viable.

In the meantime, I'm hearing your rejection for this is simply Intel
standardized the driver-assisted striping feature as NOIOB and failed
to realize it in any Intel product. Other than this, was there a
technical reason for rejecting this patch?

Thanks again!


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
