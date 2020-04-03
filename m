Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED1D19DD2F
	for <lists+linux-nvme@lfdr.de>; Fri,  3 Apr 2020 19:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsCs17QI2mj3ZeDs/KqxVUkd0EguWq1gbXghcaEa48w=; b=FfVUCClxQvZJWk
	ivzY3IBWM5yMhTQfTT3ZEHRNfwlTW9T32PwIMD3IbU1GGx991bhZX6Ud7kz8nDrdR5mn1g6ckj0NC
	OLjbGBNmsL4kfLBXzjAtLT4oe/MblZ5nRhSxZPCx8cBAcCxko+5NqzQnVoiqgo1URcIh0ZnfDkuth
	OzCbTSRXORnN0yX8RNJ5YFS9B678m2I916uWcEkwL1Wk/VLba2gEVqaJgftKtHN5HTi477Nc6vV00
	ZOFtqoJvmyOLFlpo5wu7g13aL4EbhN+/IG94YzUaXbSmaDBQ8KYdrtzM7nIwbyIzL19RYTbPHxPgb
	g9yKnLmw63hbbjBRqiZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQTl-0007ka-Ci; Fri, 03 Apr 2020 17:51:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQTh-0007kC-Rp
 for linux-nvme@lists.infradead.org; Fri, 03 Apr 2020 17:51:39 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B41872077D;
 Fri,  3 Apr 2020 17:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585936297;
 bh=2gDYCkucJCtlQj3Kc674m8oHnjfqeZIkhpIW+epZdU4=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=1sxR+iMjO0h995oWTyurMg2CwWnUfEo5dE+2Y/b90J7Uf16zJytWIDpJVqhCxdasK
 1JO13cAoJNr4eYjs9M0NyZ/cqpPwqftbHQvUlo0lWPDmoQW6RRi3W/PcQRqO790o5C
 VrT+ZQPfzFAaeSMC6PwAViIzdai45sgC6O2sy0K4=
Date: Fri, 3 Apr 2020 10:51:34 -0700
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, hch@lst.de, sagi@grimberg.me
Subject: Re: [PATCH] nvme: define identification constant values
Message-ID: <20200403175134.GA1147931@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200403164135.1482330-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403164135.1482330-1-kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_105137_926843_1CA2CF62 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 09:41:35AM -0700, Keith Busch wrote:
> Improve code readability by defining the specification's constants the
> driver uses to decode identification results.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/core.c | 10 +++++-----
>  include/linux/nvme.h     |  5 +++++
>  2 files changed, 10 insertions(+), 5 deletions(-)

multipath.c also uses these constants. Let me send v2 with that update
included.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
