Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793B2134DA5
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Jan 2020 21:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6JTtroYUQjkeu2FCD9OLIIfccBEn9ct6HyNQb/Y/Fs=; b=YAwDdmLJVEa/Nw
	UIR9TGKUE6MqVtg/cw8YjD8w8ezRSleXwlulprMDlO4nEJzld4yOoU+cy5iUYNOP5JqEthBFO9jl0
	BQHJeDLOGPUgzYHN23sDBxMGVpKx1dNjHXfBxSYBsOPkCrTZ0fAyWnPa1EdFeaujjP756s5WTrvIA
	kh4IDxEGADU2Z6LFdJaITDOu2Z9Ihaqdp8VdpLPpEN6OLjAt4OnbxA0mFKGuToC6Z2om5G1vHExXb
	3QXstMnOQ2QNLx06bj+3kw/DgBdE5I++KpHyEyMCw/zzTVyGNvZ3VJgdZDfisdGOZuokwbQqA98tD
	fPlQgbm9tQ+7n+p7Sgjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHzk-0005KT-1h; Wed, 08 Jan 2020 20:32:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHxD-0001zX-Ub
 for linux-nvme@lists.infradead.org; Wed, 08 Jan 2020 20:29:25 +0000
Received: from chuupie.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 799FC20643;
 Wed,  8 Jan 2020 20:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578515362;
 bh=4aVaL3GoEVlniUVTRMP7sOLyUvUYpviSYUtaFV5qyhM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V9QeDYB52ewmiqMefM4WgSBQorVa7UE2YNaxpIdpPgmi5+fiozAMK3rtgYr95hxst
 fG3OE8/hJ3saRSONtY90k987jWrvdH9v5FqeTZGx7qPQClNCjfQ1IPmVpcdCvD0Tug
 aABTSHTcaCKDO2+aio0Ns2aF7ObxckKG04iVnc0w=
Date: Wed, 8 Jan 2020 12:29:20 -0800
From: Keith Busch <kbusch@kernel.org>
To: wenxiong@linux.vnet.ibm.com
Subject: Re: [PATCH] nvme-cli: improvment critical warning format
Message-ID: <20200108202920.GA1020894@chuupie.wdl.wdc.com>
References: <1578505175-15002-1-git-send-email-wenxiong@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578505175-15002-1-git-send-email-wenxiong@linux.vnet.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122924_015989_65E2BE0F 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org, wenxiong@us.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 11:39:35AM -0600, wenxiong@linux.vnet.ibm.com wrote:
> From: Wen Xiong <wenxiong@linux.vnet.ibm.com>
> 
> This patch improves the critical warning format with smart-log.
> 
> Signed-off-by: Wendy Xiong<wenxiong@linux.vnet.ibm.com>

I merged the concept into the master. This patch looks like it was done
quite a while ago, so it didn't readily apply.

I also changed the keys for json output. These should idealy be single
words without leading whitespace. Please have a look.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
