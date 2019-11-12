Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D216F93A0
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 16:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPcwssKUntgQ121xPNgHCoxSIqig7Lo/uQnzhDiYYpY=; b=eSGhZSnnExkp4i
	5cvFAi5OTxArcoa8A6fGp3XFWdDUrTgxRkuzD4yhQ8f1BWNW3rLNvbWf7AWoOcq5yCwUrKZ1IbZXQ
	vbzByp1XHSNAqb2evt8CI2eP4oaa7WNXJXB7qzFTAuXfq5FSBL0Gi3NHZiJ00YkBaqRJvk00NOAgL
	3gDwkH6lW8TdPZu+6+WV6mtutrQPSUJmZLdyCkkhTXssyUbKYnpgwwjWX1MO1Gb0Dri8dy8ABbYqE
	+F17QMvzPIsdaBX+fMmkshsD1bPoJxzDeCT/bwYB6reGER2zc3hfYI3Ap5LbVsWiI5q2KOUFzHoO1
	+kQWPlqvZHHgQreaOlDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXl5-0007BX-JB; Tue, 12 Nov 2019 15:07:07 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXl0-0007B5-MA
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 15:07:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B3EFF68BE1; Tue, 12 Nov 2019 16:06:59 +0100 (CET)
Date: Tue, 12 Nov 2019 16:06:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] nvme: hwmon: provide temperature min and max values
 for each sensor
Message-ID: <20191112150659.GA12493@lst.de>
References: <1573395466-19526-1-git-send-email-akinobu.mita@gmail.com>
 <d3c0c9a7-00b9-0465-16e1-6fd7ba97dfd0@roeck-us.net>
 <CAC5umyiju2Q2fdfVaFyX+Q=sMKr5Gsc_GDVYmSa0vB+w8acvAw@mail.gmail.com>
 <20191111173505.GB5826@roeck-us.net>
 <CAC5umyjviR1J5HojE6WBhYQCzu=CFPPoNxXY=T9KRw2yTpO=VQ@mail.gmail.com>
 <e2699eee-8ca2-fcf4-d6b2-624cbddd4c6d@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2699eee-8ca2-fcf4-d6b2-624cbddd4c6d@roeck-us.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_070702_874742_69700813 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, Akinobu Mita <akinobu.mita@gmail.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 07:04:38AM -0800, Guenter Roeck wrote:
> The Intel NVMe has the latest firmware version installed, so this isn't
> a problem that was ever fixed.

What Intel device is that?  If it is one of the XXXp models, those just
seem some of the most buggy NVMe SSDs around unfortuntely (excluding
the Apple ones that don't actually claim to be NVMe at least).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
