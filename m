Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A4E1A44D0
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Apr 2020 11:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/mb5ywX0ZJeWZaVIlA/Tz8gy0IpE5lWcoLzzxgTXUA=; b=SGv/ts/vEdvUZE
	RIgyQ8xMMw/nPMlTU7siNjuMRGlAPp0eGrQrfrW+mPE5KevVEnKR0LMiN6FDLnyJ0DAH8CIb8DpKP
	YSw2tgVbNuUDjGDuVrFe3SHVRHrLFaxYYrliCH3h62Pq+pUP/tA8LUsdrC0WL0jLLbVj6qNvvqFNE
	ZvKDB8MDr7vE3PhEnMoCddoQ+BBD5cLnNjtPNU3u2koC1C2UD6r60p90e3a3ViivYldTVyfG3sgkW
	9wP4YxMJcT/sHWTeLtfSUj2pJRXOEq8K+AFTDNPgREOZ5O1d1O4/zOlDa6CO1e11CKH9gcROMZonE
	RtcvaQzBUVqULCNj5ABg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqPB-00051p-RF; Fri, 10 Apr 2020 09:56:57 +0000
Received: from mx2.didichuxing.com ([36.110.17.22] helo=bsf01.didichuxing.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jMqP5-0004vA-0Z
 for linux-nvme@lists.infradead.org; Fri, 10 Apr 2020 09:56:53 +0000
X-ASG-Debug-ID: 1586512596-0e4088309a73ad10001-VMfPqL
Received: from mail.didiglobal.com (localhost [172.20.36.244]) by
 bsf01.didichuxing.com with ESMTP id CyEDTr7iYTe0msHO;
 Fri, 10 Apr 2020 17:56:36 +0800 (CST)
X-Barracuda-Envelope-From: zhangweiping@didiglobal.com
Received: from 192.168.3.9 (172.22.50.20) by BJSGEXMBX03.didichuxing.com
 (172.20.15.133) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 10 Apr
 2020 17:56:36 +0800
Date: Fri, 10 Apr 2020 17:56:31 +0800
From: weiping zhang <zhangweiping@didichuxing.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 1/2] nvme: make sure write/poll_queues less or equal then
 cpu count
Message-ID: <20200410095619.GA4128@192.168.3.9>
X-ASG-Orig-Subj: Re: [PATCH 1/2] nvme: make sure write/poll_queues less or
 equal then cpu count
References: <cover.1586447291.git.zhangweiping@didiglobal.com>
 <134d9a5fbcf54c1efb8ffa33a5439cd48094925c.1586447291.git.zhangweiping@didiglobal.com>
 <20200409172250.GA1889561@dhcp-10-100-145-180.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409172250.GA1889561@dhcp-10-100-145-180.wdl.wdc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [172.22.50.20]
X-ClientProxiedBy: BJEXCAS06.didichuxing.com (172.20.36.207) To
 BJSGEXMBX03.didichuxing.com (172.20.15.133)
X-Barracuda-Connect: localhost[172.20.36.244]
X-Barracuda-Start-Time: 1586512596
X-Barracuda-URL: https://bsf01.didichuxing.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at didichuxing.com
X-Barracuda-Scan-Msg-Size: 1229
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
 SCORE=-2.02 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.81088
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_025651_247753_11EDD681 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [36.110.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: hch@infradead.org, axboe@kernel.dk, linux-nvme@lists.infradead.org,
 sagi@grimberg.me, Weiping Zhang <zhangweiping@didiglobal.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 10:22:50AM -0700, Keith Busch wrote:
> On Thu, Apr 09, 2020 at 11:57:35PM +0800, Weiping Zhang wrote:
> > Check module parameter write/poll_queues before use, if user
> > change them to larger than system cpu count, it will trigger a
> > warning.
> > 
> > Reproduce:
> > 
> > echo $((`nproc`+1)) > /sys/module/nvme/parameters/write_queues
> > echo 1 > /sys/block/nvme0n1/device/reset_controller
> 
> I don't think it is safe to allow these parameters to be runtime writeable
> with the current code: the driver allocates space for queues during probe,
> so you may end up with out of bounds access if you increase the number
> of queues the driver creates after that.

Yes, if user change these parameter larger than the number allocated in
nvme_probe, then nvme_create_io_queues->nvme_alloc_queue will touch the
memory out of boundary.

I think we allow user change it dynamically, just make sure the total
io queue count will not larger than allocated.

If user really want to adjust io queue when use multiple tagset map,
they need set enough queue when load nvme moduler. Then they can
tune the queue count for each tag map.

I send a seperate patch to fix this.

Thanks

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
