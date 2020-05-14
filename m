Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89C71D34AD
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 17:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luXpiTDjDN1CcsCt1hCQ+Y37Y8/G+rPv/Btxjooona0=; b=Zupf8kG4boyHuo
	dUQrOUyWcTUI3gL34OZitrQ4k/OFUcEA1TRdbH8i/ifV/LKjE0CgQgl21LZcYT30xtKV8pYyQ9+ZE
	02DvUyATU1Dhl9A0tCEvf/SqYsYm5xygheWi/bJmPPrprdzc/7kAf4K5pdaPbJ/4Q9V6MUgIFGGrJ
	cf9+pmdVSvzAJQw5X7pfds77EzoCyPvwsRz26VKMxP1rULF1d1Bzx6mq/tnQ4XB3N0cbpw+GW7uMg
	Q8e3ip9fWzkVO8dGOwNHPsbVeiTAeolAvdro8voX9S7M9c9bHn2/8CoUzFREqzfnCtnAYOviMRQUD
	e5A/3gcSBmU74pyhXMeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFWo-0007t0-LG; Thu, 14 May 2020 15:12:06 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFWf-0007s8-VD
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 15:12:00 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D696568BEB; Thu, 14 May 2020 17:11:54 +0200 (CEST)
Date: Thu, 14 May 2020 17:11:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Martin George <martinus.gpy@gmail.com>
Subject: Re: [PATCH] nvme-fc: print proper nvme-fc devloss_tmo value
Message-ID: <20200514151154.GA29964@lst.de>
References: <20200512164704.5372-1-marting@netapp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512164704.5372-1-marting@netapp.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_081158_146340_BB0A5850 
X-CRM114-Status: UNSURE (   5.20  )
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
Cc: kbusch@kernel.org, Martin George <marting@netapp.com>, jsmart2021@gmail.com,
 hch@lst.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.8.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
