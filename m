Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BF31748C5
	for <lists+linux-nvme@lfdr.de>; Sat, 29 Feb 2020 19:58:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XBjwD/p6/a1iFTRqGOCWojf//frzT3zuEp+dAdYY8c=; b=oUWKTAsv0cgBDN
	0te2fHJGCr4xEgCqpnoAh/818xrmqPe5JwKkXTZ/qBy8wVTELY9a/x43IuEVHY88c/z7YNmlK2rQU
	hCCohv6GzyopysMm6EDk81R1QVuS+YIEazMQmJjPf6OVSKnOQ89BW2YJQLUQEI7xODijvPbRn34ST
	AiAEHqlY2bHv1AzzlszwneKrIudEUTqSKr6VUwL2S/3igRNE/EWEFitfteRs8fskIUtkD4WNu7Pfl
	A3svDf6ZUELUHGTXUdgtF3zMGpzYsyj6xxG3WF3uKz1Ed2DXVuRk8Ql3s/+psJKWvN0J6hrUqqrVN
	LannuENqh9Ay4ld1K8EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j87JB-0001cD-DZ; Sat, 29 Feb 2020 18:57:53 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1j87J8-0001c5-2B; Sat, 29 Feb 2020 18:57:50 +0000
Date: Sat, 29 Feb 2020 10:57:50 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Subject: Re: [PATCH v2 1/1] nvme-pci: Hold cq_poll_lock while completing CQEs
Message-ID: <20200229185750.GA5698@infradead.org>
References: <1582772023-67704-1-git-send-email-bijan.mottahedeh@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582772023-67704-1-git-send-email-bijan.mottahedeh@oracle.com>
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_poll_irqdisable will need the same fix.

Also I think we can merge nvme_process_cq and nvme_complete_cqes now
as the split is becoming rather pointless.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
