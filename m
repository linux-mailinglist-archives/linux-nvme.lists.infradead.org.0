Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AC21B047
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 08:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iST6kiaKHi+gXBQcxcnk42/AQkBbjlDeRqenFA3utGg=; b=iqFeNjEKWmES+x
	5zhjo4avcfrUDuuXoXky/tmqltESlP8qkQr9//L7NHIfFIB9j8VnfvF6aEjbf0aCO2RyULAvQzI1d
	zbd+IU1+yEiwrMcYf0EtqMGER7LIXmkppqR1AE5TaLcV9Pur+Ldw48bvSdCXhfV0P8vTB9lv2tMPN
	uMToyRjboDpfHpiSkL44p1EWeufR1hDzeS8PlY5Q7lMqk6cO8XXQJAn0nMq2P8KINTXmraV2MIKKD
	SDSqx4rwp4aZms9QNV0H+wvJjYRwXFLMpFCkGYw/E4vh2HLh9M8GnmnKrRRBZ4xEhiC2bArkDLyDj
	a5e3Xb5pCW5t5v3LGQ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4PO-00038w-Fy; Mon, 13 May 2019 06:25:58 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4PK-00038l-9k; Mon, 13 May 2019 06:25:54 +0000
From: Christoph Hellwig <hch@lst.de>
To: hare@suse.de
Subject: detect duplicate cntlids v2
Date: Mon, 13 May 2019 08:25:08 +0200
Message-Id: <20190513062510.756-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

this series detects duplicate cntlids in a subsystems.  It is
based on a patch from Hannes.

Changes since v1:
 - add a lockdep check for a held lock
 - improve printk format


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
