Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264EE1F3D6C
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jun 2020 15:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztN/gkH/QxzYJjjJJq4CmyN0F2vKN8pGFeDAFxfaxws=; b=tdyRNtOy5Ooeq6
	L+i/fIm5XrLhQFMbaLX52zQG+RbeITQOTz59+rbWiK86avh53YLFIyEnX3LOzpz5cUZP5PfQw6hzE
	IlmTPBdrNzol+a/h05asu+X668PSncwA3+CCW9LlMK7Owwroi3SY/nzZtCCDhUPU6UGlwZi5zltd4
	SUOjDli0Nut/xMaFcdiNnOKxKi06nEzbicX9ib5XBVpBIGSYskwNsmLKpIXe78Vlnfi5+YL08Heew
	ZIxL1vraJtH2vBw2QkZ6NpyaUqGBQtjsAp+2/3g23UTVGvLpphLTHe27A3BhU7OkdF5QaKXLQodgR
	bPvanKR7Q6rO8bwhSh2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jielL-0002pk-Up; Tue, 09 Jun 2020 13:57:59 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jielG-0002pE-8x
 for linux-nvme@lists.infradead.org; Tue, 09 Jun 2020 13:57:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6AEE968B02; Tue,  9 Jun 2020 15:57:52 +0200 (CEST)
Date: Tue, 9 Jun 2020 15:57:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 0/5] NVMe cleanups for 5.8
Message-ID: <20200609135752.GD10669@lst.de>
References: <20200602131546.51903-1-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602131546.51903-1-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_065754_457501_402E716B 
X-CRM114-Status: UNSURE (   5.07  )
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
Cc: sagi@grimberg.me, chaitanya.kulkarni@wdc.com, israelr@mellanox.com,
 james.smart@broadcom.com, linux-nvme@lists.infradead.org, oren@mellanox.com,
 kbusch@kernel.org, nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I've applied patches 4 and 5 to nvme-5.9 for now, while the rest is still
under discussion.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
