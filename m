Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179F219F5A6
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Apr 2020 14:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NUwQ83ve+wxRj2NON4BshxLA7UqhvwlQMs6ZYoYQTYg=; b=rGQTBbm/uhEqzf
	TotLxtq5bBwfWfte3CvqXOxPgzhlI8M3Fin7xH6LHm4d8Q3kxpxMzgmSwqr0LXjoxxPoiA8IW3nuC
	JVpETw1TKPUeYVUc+dQPj5RjyY2wEFf3qBH6is5ROJ8+AWrf6hEa5rlF3muWjpjRR9jz7DyRJlzhU
	+dxOizwoMmJY8MQinq1NwdqI8F5kT3EdYjThppNIUleNMdP6uAhfGfKIIxeEya59Tg8jCrsjJBcTA
	gyzcOh58TxDn3hs5qVLFUTI4EEKsW33sKpUByCdYGgT8XMONtkIfU8ZV7QtEF/oVwZd/49nNx7qNS
	+W7GgEcLK9R6bCcSJFzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQdg-0004CE-Vo; Mon, 06 Apr 2020 12:14:04 +0000
Received: from [2001:4bb8:180:5765:7ca0:239a:fe26:fec2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQdW-00044Y-8j; Mon, 06 Apr 2020 12:13:54 +0000
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: a few more namespace scanning cleanups
Date: Mon,  6 Apr 2020 14:13:47 +0200
Message-Id: <20200406121352.1151026-1-hch@lst.de>
X-Mailer: git-send-email 2.25.1
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

this series ties up few more loose ends in the namespace scanning code.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
