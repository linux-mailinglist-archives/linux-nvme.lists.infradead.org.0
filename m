Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3CA199A62
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 17:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7dfpzt5Uv9sBdi11xJpLipVYNghCUcQp9xaXR9AFms=; b=GjX1eyyqrC9vnP
	eFRdrnzGkKWhhcVARgbS1QrnSHxUwqn/cwzVZ2C7bkbkxZP6BThoc4HOIOS/zxGrTMwX68tpzxSD1
	Kv+/pPQgZ3xywzCjNuGEf86XzcRH70Phu9XrYhAFnd7YpvSC8pAJV+qR5VEkTRE7J17ZaNz8mkhY8
	2kcvez80Znd4dbIMfZvF5vhAn3aoGC23lUE4cNtrHTfwL1RzM3/eLNsvQtpyQqKkx31ob1o2MANVJ
	qbDmkfvmyu+PgzB9iVGiR6Avl05NKSwIRZ+eKUwybJLcZ7bFPWxOGPjjkDpeEtVUCAu+fsJbYMd4a
	SxhgjibULeLkIAMz9siQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJD1-0004DV-GF; Tue, 31 Mar 2020 15:53:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJBG-0002pj-9Y
 for linux-nvme@bombadil.infradead.org; Tue, 31 Mar 2020 15:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WjVDI71xjB9QcyRMITLjQiiHIpdqJGelPGPABA93i9o=; b=tw7d+Lts3Yu7uO9aWO7fsrXyKg
 hIqovvk/160WTrno13TmCNqO6EkOFF5o88eGdIs5DK3NeQ3cn3omwdgbI3jcSSMwITazH+eY+3Bwg
 aNrHAVZ4Aq+VU+HoIs9XYJtHNHeCIZ5lnYIjZu/4uEkuAM8prjBk/L5TGASabOG+pDFnFVM8crmcP
 ZBLFFWJxD+4SWYN1cPjjdKwvP7iX8hEEUadWLHrM8sLmGWfLuA1MMqTcnRN7PXMVdHUzPU19aKVuJ
 xtTiOhVJ4gaJmkRvAfbyzMrIK7tPkuEn/5qK83D5KG0965ZfLZmmt4kVwNMGAEHm6myFHvbzlT7MQ
 Frg0mAIw==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHwh-0003f8-Gj
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 14:32:53 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06E722071A;
 Tue, 31 Mar 2020 14:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585665163;
 bh=x7hdBy1G/gH3BpgVORSnhNkjE5iIBZe1J180qnL2CH4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0DkkzLU9AByf4i/c4ZLvLg+VvK9XF6W0M3r311XvzkY8jK0eD2SpxNTCOx2opUljj
 NMCMhLPH9GmMK9JyuHDLKsw1cF5Tud63whdP1JhAkx2vyu+oqYVwXbkUmBSbGzwcZD
 jjYfno92tqx3++lYt0SRURL4Iz/FMv8sukJNLDjc=
Date: Tue, 31 Mar 2020 23:32:36 +0900
From: Keith Busch <kbusch@kernel.org>
To: Jeffrey Lien <Jeff.Lien@wdc.com>
Subject: Re: NVMe-CLI issue on Ubuntu 18.04 Kernel
Message-ID: <20200331143236.GA30875@redsun51.ssa.fujisawa.hgst.com>
References: <BYAPR04MB5656BC5528D84371D1DECB3FEAC80@BYAPR04MB5656.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB5656BC5528D84371D1DECB3FEAC80@BYAPR04MB5656.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_153251_893305_40CE59C8 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kenneth Burgener <Kenneth.Burgener@wdc.com>,
 Randy Bates <randall.bates@wdc.com>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 02:21:01PM +0000, Jeffrey Lien wrote:
> We are seeing the following error message when executing the "nvme list" command on Ubuntu 18.04 with the 4.15.0 kernel:
> root@lmt-store-17:~/.src/nvme-cli-old# nvme list
> Failed to open /sys/class/nvme-subsystem/nvme-subsys0/nvme0/address: No such file or directory
> 
> It does not seem to effect the completion of the command; it's just extra noise back from the command.  I'm not sure why the address is not present with the 4.15.0 kernel, but also not sure what it's used for by the nvme cli code.  It's referenced in the scan_ctrl function in nvme-topology.c part but I don't think it's used by any other functions.   Is it ok to just remove the reference to the address attribute in the the nvme cli code?  Or is there a better fix for this issue?

I think we should suppress the output in this case. We don't need the
'address' attribute, though it's nice to have.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
