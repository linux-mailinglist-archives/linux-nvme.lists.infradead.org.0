Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CDE59427
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 08:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CqT5STRpPg+NSzDnSb1C/h/R8Q9eUkiCoocbAN5gQ0w=; b=eCNuwG7RnvBIDG
	FhT0SqsMBYozbhUCBhBXTSLo2y6rB3zKdRV2QJB97N2y9zgqz8IpxX+j4QWdwRtwx0WIqS6C0Ixmv
	ediuArmARV9U/r5veyET6PrOZ1Nr+mMlqS5GKGwA9BY7FywVPRXJcJdIcyYXDmfKqPKxSPHohiJVN
	XCwNDNOLRT4l0diPk/XKx7ChQdCZpP1L+UfeF3MgPvgxkPaqAABfVrcSVHa2fC/Wggwq5+A4D+U3f
	/51eV6ZmZfUZ0dfpR7N5pK2zjzrfrtmTjZ3kOKRrhKsIPwBdH0NjFQbbTGWIhHfaSj4Wsz6GlA7jP
	YfSOUOzB5e/1TTPcmf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkI2-0000pf-Kg; Fri, 28 Jun 2019 06:23:18 +0000
Received: from 089144214055.atnat0023.highway.a1.net ([89.144.214.55]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkHw-0000pW-MR
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 06:23:13 +0000
Date: Fri, 28 Jun 2019 08:23:10 +0200
From: Christoph Hellwig <hch@infradead.org>
To: linux-nvme@lists.infradead.org
Subject: [ANNOUNCE] Alpine Linux Persistence and Storage Summit
Message-ID: <20190628062310.GD2014@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We proudly announce the second Alpine Linux Persistence and Storage
Summit (ALPSS), which will be held October 1st to October 4th 2019 at
the Lizumerhuette [1][2] in Austria .

The goal of this conference is to discuss the hot topics in Linux storage
and file systems, such as persistent memory, NVMe, Zoned Block Device,
and PCIe peer to peer transfers in a cool and relaxed setting with
spectacular views in the Austrian alps.

We plan to have a small selection of short and to the point talks with
lots of room for discussion in small groups, as well as ample downtime
to enjoy the surrounding.

Attendance is free except for the accommodation and food at the lodge [3],
but the number of seats is strictly limited.  If you are interested in
attending please reserve a seat by mailing your favorite topic(s) to:

	alpss-pc@lists.infradead.org

If you are interested in giving a short and crisp talk please also send
an abstract to the same address.

Note: The Lizumerhuette is an Alpine Society lodge in a high alpine
environment.  A hike of approximately 2 hours is required to the lodge,
and no other accommodations are available within walking distance.

More details will eventually be available on our website:

        http://www.alpss.at/

Thank you on behalf of the program committee:

    Stephen Bates
    Sagi Grimberg
    Christoph Hellwig
    Johannes Thumshirn
    Richard Weinberger

[1] http://www.tyrol.com/things-to-do/sports/hiking/refuge-huts/a-lizumer-hut
[2] https://www.glungezer.at/l-i-z-u-m-e-r-h-%C3%BC-t-t-e/
[3] approx. EUR 40-60 per person and night, depending on the room
    category

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
