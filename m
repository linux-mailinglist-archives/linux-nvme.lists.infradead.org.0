Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E9E1E2F3C
	for <lists+linux-nvme@lfdr.de>; Tue, 26 May 2020 21:45:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7UyAJMJ+/ggdfZcxf4rnaZ8fg0WFtFuIF4Ly4DD1PI=; b=pjPvPT1mFmx2jL
	gT4ssw9jHonsdksoi5Z76PD27TnY5g8g16mzy75rtxuzN2GNBp7DvUOy0aTJxg6dJisqqAXktdMSJ
	3tI+04bSpi/cpyQhPyBLS9iC6OlfwhfXP98W0yKL0pgX+gvWKsRO/9BEqR08neq5iwFM/0cHboRiW
	vzMr1igEj36pf+Vjyo3kWtKAqOUh0iJ9kiCV4UKq8/cVJI9jzQEA6pjaWYN+mUvIckIqDXmPBEnHz
	wfzF1l5d6WikE2k46QJnr2NBl8/w/9xaXseNLj1gswfFP1BnHONkv4jgooLlg4w2/CGHuMM6bEHed
	qDM/3oZSPpQk3qopIuAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfVb-0006KI-6D; Tue, 26 May 2020 19:45:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdfVR-0006Ju-UU
 for linux-nvme@lists.infradead.org; Tue, 26 May 2020 19:44:59 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 030B52086A;
 Tue, 26 May 2020 19:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590522296;
 bh=yoFEZymRM/om2uVZpH37wTMiTh5QaVDYJIRCNKs8Az8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SBef1ux4oZU7dWJRDgYPfK/taa6vb6WaxT6vnaru/2NLrUKh9P9J5D3Z0AMO08Rni
 Cuusb+cqb36z+e0MMdk3sPYLvO7PcKysew5fDeNaTT/IOEESc7gz8oaly3uXIuEWPg
 CesLHh31gW+pSE0gXA3/l00gyjw30yWdoYEBmVAA=
Date: Tue, 26 May 2020 12:44:54 -0700
From: Keith Busch <kbusch@kernel.org>
To: Zhouhua Liu <liuzhouhua@huawei.com>
Subject: Re: [PATCH V2] nvme-cli: Add huawei vendor id as filter in command
 "nvme huawei list"
Message-ID: <20200526194454.GA3429867@dhcp-10-100-145-180.wdl.wdc.com>
References: <3a4b9e11-c653-2d81-98e4-09be9b0ab584@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a4b9e11-c653-2d81-98e4-09be9b0ab584@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_124458_001611_84CAE86F 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Kangwenhong <kangwenhong@huawei.com>, wangzan <wangzan@huawei.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya.Kulkarni@wdc.com,
 "Wangchong \(Michael\)" <Michael.wangchong@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:40:40AM +0800, Zhouhua Liu wrote:
> This patch V2 is to add huawei vendor id as filter in command "nvme huawei list".
> And comparing with the last patch, I have remove the symbol \ to comply with coding style.
> 
> Signed-off-by: Zhouhua Liu <liuzhouhua@huawei.com>

I've hand applied this with a more appropriate commit message (no need
to mention version changes there), and fixed tabs/spaces. Thanks!

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
