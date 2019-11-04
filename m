Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ADEEE2F1
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 15:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bw37CXgh+dANjGMEEQiQQViWAeBvjWpwwNVA1jET/9w=; b=JNH2eTFFlh6BW7
	U2bk8wy0RZCVHKu/hPW+MtQw3yv+mPQSbid4eMyyRwuOR8ooW1wCsSbb1pEI0I9MS26jhqyhgeyUK
	4aL2qo4CmQMuZ+FZuRY5ysmIj5u4WMIFOmeNygIq/OJbA/GupMcqW+TDA+MM6xNNiMtFZEaVb7oYz
	VGFw8LwaM1SJfSinpT9Dh8OHm0JHNnigsJFHWzLq/Gr7CoD1uLoXFjAOfpKz7GxiYOlJyzTqWA3p0
	cEL+uT0sPdz1jGx0op/+VuKXeclWoy15eHEjP5VxSxzag4uTegDWRL7tQByK6n4HgNxCa293xDejr
	gc3ewtSvGAzvTLiyfAMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdn3-00046s-BI; Mon, 04 Nov 2019 14:57:09 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdmt-00045L-3G
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 14:57:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8424D27E03F9;
 Mon,  4 Nov 2019 15:56:57 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id FBasB0e2P1LE; Mon,  4 Nov 2019 15:56:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 439EB27E064D;
 Mon,  4 Nov 2019 15:56:57 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 439EB27E064D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1572879417;
 bh=zTdMY1D+/EaaQogl6Eug21gFV2VVh60wfcDGJ5Yqj6I=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=NO/Bwf7WEpyIAZilQE02nBufJrADGZiT/7YdlYFMmu3EHF6L6sJ0bULUkOBew1RcW
 VvDG0HOgOlJuX9609IV+kdtwM7JVOnp06GmNCYEcrmGJzbtjOg610l3p6QrcPlTJMy
 cE0rqYZJ2BMS0Bzz/JI0UgPfArZVTqpdBk16k5o4=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id O9ucltNPY_jE; Mon,  4 Nov 2019 15:56:57 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2B9B227E03F9;
 Mon,  4 Nov 2019 15:56:57 +0100 (CET)
Date: Mon, 4 Nov 2019 15:56:57 +0100 (CET)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Charles Machalow <csm10495@gmail.com>
Message-ID: <871357470.90297451.1572879417091.JavaMail.zimbra@kalray.eu>
In-Reply-To: <CANSCoS-2k08Si3a4b+h-4QTR86EfZHZx_oaGAHWorsYkdp35Bg@mail.gmail.com>
References: <20191031050338.12700-1-csm10495@gmail.com>
 <20191031133921.GA4763@lst.de>
 <1977598237.90293761.1572878080625.JavaMail.zimbra@kalray.eu>
 <CANSCoS-2k08Si3a4b+h-4QTR86EfZHZx_oaGAHWorsYkdp35Bg@mail.gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64's result field.
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvme: change nvme_passthru_cmd64's result field.
Thread-Index: NUQ6qFaX8J30rCk1l2+etdD7aEChkA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_065659_329933_2CA68C27 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



----- On 4 Nov, 2019, at 15:51, Charles Machalow csm10495@gmail.com wrote:

> For this one yes, UAPI size changes. Though I believe this IOCTL
> hasn't been in a released Kernel yet (just RC). Technically it may be
> changeable as a fix until the next Kernel is released. I do think its
> a useful enough
> change to warrant a late fix.

The old one is in UAPI for years. The new one is not yet, right. I'm OK
to change the new structure. To have compatibility you would have to use
the new structure (at least its size) in the user space code. This is
what you'd liek to do?

Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
