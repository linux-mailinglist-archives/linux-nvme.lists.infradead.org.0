Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CE265437
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 11:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:In-Reply-To:
	Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Dkx0lDrF1Fj2+7VobMIVcT6+e0NmfwPMpt4j+r6Cqw4=; b=Flq72cIdd4VJfB
	yx/YQzTPritV6VIsknMftR9D1kcrdPVEx5fzXDzYEVBUlXLV6GJ0PSsxyJvDGGu7XaFZuEQ7bck4x
	xOUxBB66j+vL0m/TdTXHvEttcyK/RC+cdeGXlX66fXj4oi6iFwXyAaFy2m1XcH3lXtPr3KfY4cIk7
	bVi30wsYGqbuAfh8Hm7sS7Yo+Yg536zRVyqlFQ1g29151faCEBPe/w3WQrD18G0ybptVL0Ltnjqe2
	lc8KeKHkcq6REH1MreiMJM11iWYBLreH4vswGJ70RLKB3DegNanDZpdcGUixbTntS0Xx0tVJV59/G
	b649IHdCP+vZWXclUG1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVnz-0008DG-7o; Thu, 11 Jul 2019 09:55:59 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVnl-0008Cz-GE
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 09:55:46 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7157E308AA11;
 Thu, 11 Jul 2019 09:47:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 647D960BFB;
 Thu, 11 Jul 2019 09:47:14 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5663B1833001;
 Thu, 11 Jul 2019 09:47:14 +0000 (UTC)
Date: Thu, 11 Jul 2019 05:47:13 -0400 (EDT)
From: Yi Zhang <yi.zhang@redhat.com>
To: linux-nvme@lists.infradead.org
Message-ID: <619411460.27128070.1562838433020.JavaMail.zimbra@redhat.com>
In-Reply-To: <1310083272.27124086.1562836112586.JavaMail.zimbra@redhat.com>
Subject: regression: nvme rdma with bnxt_re0 broken
MIME-Version: 1.0
X-Originating-IP: [10.68.5.41, 10.4.195.2]
Thread-Topic: regression: nvme rdma with bnxt_re0 broken
Thread-Index: 2UfSPBB7aurhIBgBOMtlZZ/Acg5lQA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 11 Jul 2019 09:47:14 +0000 (UTC)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_025545_572212_4C3E375D 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: danielj@mellanox.com, parav@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello

'nvme connect' failed when use bnxt_re0 on latest upstream build[1], by bisecting I found it was introduced from v5.2.0-rc1 with [2], it works after I revert it.
Let me know if you need more info, thanks.

[1]
[root@rdma-perf-07 ~]$ nvme connect -t rdma -a 172.31.40.125 -s 4420 -n testnqn
Failed to write to /dev/nvme-fabrics: Bad address

[root@rdma-perf-07 ~]$ dmesg
[  476.320742] bnxt_en 0000:19:00.0: QPLIB: cmdq[0x4b9]=0x15 status 0x5
[  476.327103] infiniband bnxt_re0: Failed to allocate HW AH
[  476.332525] nvme nvme2: rdma_connect failed (-14).
[  476.343552] nvme nvme2: rdma connection establishment failed (-14)

[root@rdma-perf-07 ~]$ lspci  | grep -i Broadcom
01:00.0 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme BCM5720 2-port Gigabit Ethernet PCIe
01:00.1 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme BCM5720 2-port Gigabit Ethernet PCIe
18:00.0 RAID bus controller: Broadcom / LSI MegaRAID SAS-3 3008 [Fury] (rev 02)
19:00.0 Ethernet controller: Broadcom Inc. and subsidiaries BCM57412 NetXtreme-E 10Gb RDMA Ethernet Controller (rev 01)
19:00.1 Ethernet controller: Broadcom Inc. and subsidiaries BCM57412 NetXtreme-E 10Gb RDMA Ethernet Controller (rev 01)


[2]
commit 823b23da71132b80d9f41ab667c68b112455f3b6
Author: Parav Pandit <parav@mellanox.com>
Date:   Wed Apr 10 11:23:03 2019 +0300

    IB/core: Allow vlan link local address based RoCE GIDs
    
    IPv6 link local address for a VLAN netdevice has nothing to do with its
    resemblance with the default GID, because VLAN link local GID is in
    different layer 2 domain.
    
    Now that RoCE MAD packet processing and route resolution consider the
    right GID index, there is no need for an unnecessary check which prevents
    the addition of vlan based IPv6 link local GIDs.
    
    Signed-off-by: Parav Pandit <parav@mellanox.com>
    Reviewed-by: Daniel Jurgens <danielj@mellanox.com>
    Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
    Signed-off-by: Jason Gunthorpe <jgg@mellanox.com>



Best Regards,
  Yi Zhang



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
