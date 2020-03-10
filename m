Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2101318085B
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 20:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4xtx5Cl1+wGIfisAWskQgl1QUl3zku4XwpyJg4dHYs=; b=FUnkz8EVOhi2MK
	qiTWJ+g45xgzuhwkdlwa/HTal2RWoeujCY9irCeZK8Vab8TPsp0XokZ21+bqaRp3tSZgXHJLnNzGc
	RBrLhdINBne0CzC7RmB2Q2SEiBsYLrfuymqP70JXX+JA6GPTz1xTn/9bkpeRy4v/qiqqUQ3pGCEIA
	IWFDLEefWM42gZYk9Nb+bR0TqJqiOjlg4nEooBzktBf+B4OF5QEhtz6SSRmTOjZbTne4FLvJvRFrs
	7r54d1ZM+FdmgrnfI2VVLpnKJCHx+i0xdESpA+NTOZ/HjxkjHRVZbtZS8huG+8X2iRwKoBUSOCb30
	bk3dBQUm+aigIUN3ZpJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkno-0007wV-4R; Tue, 10 Mar 2020 19:44:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBknk-0007w4-QO
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 19:44:30 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A61321655;
 Tue, 10 Mar 2020 19:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583869468;
 bh=6XW7aCtfxCKGsIcAHgmcRuzwNvsuhRRYx5C8Wp0al6E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yq8+dpHZpghRMZKMiXDkocVSmT04u1hP0K7HVezI5uuwIzf25lAXYAFVLJTq9wv7E
 wbAOPAZMB+ESVwrnbVGZDVhSr6EEqmBM3NJRYdmljjfuQ+opXwbaL9PIaxRMv0LbKT
 uB2in5lJWfgyEsOm6zIpEmP4c15hZ6ttptRz2b6s=
Date: Wed, 11 Mar 2020 04:44:21 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: I/O performance with block sizes > 128k
Message-ID: <20200310194421.GB17237@redsun51.ssa.fujisawa.hgst.com>
References: <321f0a4b-8a75-8cae-2d77-34ad712225d3@oracle.com>
 <20200310170818.GA28008@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310170818.GA28008@infradead.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_124428_884506_D998C04D 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 10:08:18AM -0700, Christoph Hellwig wrote:
> On Mon, Mar 09, 2020 at 02:49:10PM -0700, Bijan Mottahedeh wrote:
> > I'm seeing a sizeable drop in perf with polled fio tests for block sizes >
> > 128k:
> 
> Try using a controller with SGL support.  NVMe PRP unfortunately are
> a completely brain dead scheme once you use non-tiny I/O sizes (
> and actually really painful even for those for other reasons).

SGL would really help if you have phyiscal continuity, and never needs
to allocate from the dma pools. If most pages in the transfer are not
physically contiguous, though, PRP is still more memory efficient. But
yes, the PRP format is ... unique. :)

FWIW, I couldn't measure a performance drop on real hardware comparing
the large pool vs the small one.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
