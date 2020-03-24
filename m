Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C59190869
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 10:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TlTmZeOksewU9IStIsx2Me5C9VE0124S7MVz+9eo6p0=; b=atRFT4cSuTnUqc
	tz3PRFIx8qnyzoeUA0duQlsd9Z4zqcXAozR2u1cQDPKl4dBzAu29hd6p7P5Tmefj9Y9D9TDqLIrgU
	ZTG5MXtRRjBjnAGrW4K/myStxPAS9LwEE8xx1/5Ogs1sk5mRlOL1+mfi7uPLueFYnFXirBEYDlKEz
	UftD3F3jynCZi1LQMbDSYBjzRRb5XSnEWPDeNqZ5DxOHsqHwGNFySGXlv+1jHUof1Uy3gUehgCW+z
	kbLGr9U82TAUnjftezyR+lqDzPszwcy+8xBn+/JlhR3/VNHBwzaN6F2wXsjyLl1VzITTvYUkOgyKM
	GnYTmvmhO/M/hnqwofCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGfT6-0002iK-EH; Tue, 24 Mar 2020 09:03:28 +0000
Received: from [2601:647:4802:9070:45a4:15de:f2dc:1149]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGfT3-0002hx-AW; Tue, 24 Mar 2020 09:03:25 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <kbusch@kernel.org>
Subject: [PATCH rfc 0/2] support ip resolution with hostnames
Date: Tue, 24 Mar 2020 02:03:22 -0700
Message-Id: <20200324090324.24459-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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

People hate IP addresses, that's why DNS exist. This simple
patch allows the user to connect to fabric device using
a --hostname parameter instead of a --traddr to make peoples'
lives a little more convinient (consider this nvme-cli small
contribution to the covid19 battle).

Sagi Grimberg (2):
  fabrics: add fabrics_ prefix to fabrics operations
  fabrics: allow user to pass hostname instead of traddr

 fabrics.c | 83 ++++++++++++++++++++++++++++++++++++++++++++++++++++---
 fabrics.h |  8 +++---
 nvme.c    | 10 +++----
 3 files changed, 88 insertions(+), 13 deletions(-)

-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
