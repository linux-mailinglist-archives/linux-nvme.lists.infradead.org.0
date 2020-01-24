Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25F3148DC6
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Jan 2020 19:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2rUfAGr1v/RYD0eswBtwBGrGis4qTr6zIZnQqE6UCc=; b=GpuUvOMnBLmci4
	cEr9XsePubi3iatJ/by5bzkJnNOwxvzT/YzmYWVBSApw797KiLFNbkoNJowd8P2k9nZmKwspKrWgT
	ESq7tF2b1Ef2tCWBbb+fyyLJU3vk+RhTJ9u7mKgWLQpKiffmjxsTLt+oy8alFM6bbwfnqXDKZkDmO
	NYpfNgSENjwNfhagTaCVYijU9ActObXZSemk8+CsJ7ewNua0njdwy9l2PFIK6UWC6hoSomR76DyWz
	Ys5z5KV8pMUYZWzZ5/wQexcjtVf9N0GeV3W+QupGcc2Fb+vpQ3AmLgVOShLQL/dtME6NoWiS0Eqta
	cNPZ4bo1Vgb5Y/DIzoYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv3i8-0004aa-Ji; Fri, 24 Jan 2020 18:29:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv3hx-0004YT-Kr
 for linux-nvme@lists.infradead.org; Fri, 24 Jan 2020 18:29:34 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1B6320709;
 Fri, 24 Jan 2020 18:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579890569;
 bh=vHNfRVWwqfzV3PwS6VKTReQ+d3KpOWPqXs+y3ozbVtU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hM2AU2wheyUty8uvnf+lkRGTkhXz6YioBYakBckN4m3S9qkHhSAEcvIeHAC5pP0uo
 QZSF+l9ChqY2yUGNW7nuelj/GheBkjM7i/+DO4jeB8jIWZ2jfEOgHeyKvbix0Ja1yC
 hfhsgQFuMEFBw5rLSfNyHRakp/3Qdw1eossMR30M=
Date: Sat, 25 Jan 2020 03:29:26 +0900
From: Keith Busch <kbusch@kernel.org>
To: Edmund Nadolski <edmund.nadolski@intel.com>
Subject: Re: [PATCH v2 1/1] nvme: clear io tags when freeing tagset
Message-ID: <20200124182926.GB19243@redsun51.ssa.fujisawa.hgst.com>
References: <20200123201947.4482-1-edmund.nadolski@intel.com>
 <20200123201947.4482-2-edmund.nadolski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123201947.4482-2-edmund.nadolski@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_102931_059058_6C422669 
X-CRM114-Status: UNSURE (   7.20  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 01:19:47PM -0700, Edmund Nadolski wrote:
> A tagset is invalidated by blk_mq_free_tag_set, so nvme_free_tagset must
> clear nvmeq->tags for the io queues. A subsequent nvme_init_hctx will
> re-init the tags if/when needed.
> 
> Signed-off-by: Edmund Nadolski <edmund.nadolski@intel.com>

Thanks, applied for-5.6.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
