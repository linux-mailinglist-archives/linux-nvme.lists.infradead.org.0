Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A751CFA39
	for <lists+linux-nvme@lfdr.de>; Tue, 12 May 2020 18:12:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajhiEygqklJGtURHehnjhz1QOLcVcg2aQ5oo1nZkMZw=; b=cejvCLHDdShCyn
	xNr19wl+i/gZGg028qIkYNA/Vixj9iptT9DteqZKiPGs5cRvCpIX6YwRnQ4V0L7wpSZ/BxeAPRHmD
	hUq94UAxewdNS+Og5QLS4JroGsr4810iwTL3dcTNSXsHDOoI9NaCsOSpFjOfDodbjdvQjw/ezouRP
	t6D4hE0tYmXIZkyWNVckIcBvqn1ePXH9cmKDz0rKVGUGtcMjy1u/s5xKZ6+ZomRMDg7inHJ1iQwJA
	bQAxgTF3zdHWSMWsFkKpNh9k8pgMqAcMZ811iok6YZl2qFtCj3ZLIP7X/Auyh8qA3vFXCbxDlwXdK
	8U9hB7vyI4AqHAFvO6zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXWB-0003Vl-M3; Tue, 12 May 2020 16:12:31 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXW7-0003VG-IK
 for linux-nvme@lists.infradead.org; Tue, 12 May 2020 16:12:28 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C3EA868BEB; Tue, 12 May 2020 18:12:24 +0200 (CEST)
Date: Tue, 12 May 2020 18:12:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] nvme-tcp: set MSG_SENDPAGE_NOTLAST with MSG_MORE
 when we have more to send
Message-ID: <20200512161224.GA6049@lst.de>
References: <20200505052002.14924-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505052002.14924-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_091227_757941_8D6607D6 
X-CRM114-Status: UNSURE (   7.86  )
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
Cc: Keith Busch <kbusch@kernel.org>, Anil Vasudevan <anil.vasudevan@intel.com>,
 Mark Wunderlich <mark.wunderlich@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
