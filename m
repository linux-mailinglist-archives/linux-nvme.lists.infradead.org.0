Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3A9272A3
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 00:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxOaqERvSKciADx3HrW1s6c63JNLK3Knc+YujP6DxLk=; b=uJUgRCPCnTXQ/E
	EAtPYkU39/xxVqkaKZeV2GtkoT0H3RVvemitrmlgDkY/bYwZJgdsyMdEkYMkKjwo+piENt+AYlI52
	GZkP1iDHVpLa/k3qARVZY8h8umwlAOm5XEWe3dZcN2FwP8pa7pVjvhV/emaJ+XtPlQRt391+QPYEY
	okWYRBRF/zSZYngzLw1dChPIBivs4TD/tISYzslSOMS6TimfXlRqH1L4p6Q6hHEmwuvAwr1gUKQ3r
	0lqZUjHk0PV3Fw0wSO/L8A3wkhUShgtQcEbunj52sLrMvQcepHEZn4vgK45UmF9Mp57qrO4IZY24a
	9QsezsW2mC4RgTlJN0mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTa8Z-0004bO-Es; Wed, 22 May 2019 22:55:07 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTa8S-0004JY-OL
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 22:55:02 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 15:54:59 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 22 May 2019 15:54:58 -0700
Date: Wed, 22 May 2019 16:49:55 -0600
From: Keith Busch <keith.busch@intel.com>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 9/9] nvme: Retrieve namespaces during list-subsys cmd
Message-ID: <20190522224955.GC5857@localhost.localdomain>
References: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
 <1558543193-24752-10-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558543193-24752-10-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_155500_809517_31713D92 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sagi@grimberg.me, martin.petersen@oracle.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, kbusch@kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 07:39:53PM +0300, Max Gurtovoy wrote:
> Add an association between subsystems/ctrls/namespaces using
> "nvme list-subsys" command. Now this command will show the following:
> 
> nvme-subsys4 - NQN=testsubsystem_0
> \
>  +- nvme4 rdma traddr=12.212.99.85 trsvcid=4420 live
>  \
>   +- nvme4n1
>   +- nvme4n2
>   +- nvme4n3
>  +- nvme5 rdma traddr=12.212.99.85 trsvcid=4420 live
>  \
>   +- nvme5n1
>   +- nvme5n2
>   +- nvme5n3
> 
> Instead of:
> ----------------
> nvme-subsys4 - NQN=testsubsystem_0
> \
>  +- nvme4 rdma traddr=12.212.99.85 trsvcid=4420
>  +- nvme5 rdma traddr=12.212.99.85 trsvcid=4420

This is a terrific start. Your output indicates you are not using
nvme native multipathing, though. Could you retry this command with
that enabled (I'll try it tomorrow as well)?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
