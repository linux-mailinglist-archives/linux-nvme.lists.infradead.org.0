Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377D31182A
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 13:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dg/MsCRlGVAa0EzDtH+KUW+COd6sz+Ofa9vQc81YIno=; b=HmPVeCDqVMqxav
	2n19draOzMKS4UXjmdVW9Zvf9GBrjNWKk9kHTIKder8WsVNQMe9nN9a7+6w77IQLSFc3ONTvUtcWE
	fJvWjB5PELBC1OoaCsf0rdUsIhtlBxRUTZuGqoN8ZkCY/K4HqrTbvXNj5Z/GVyrFu3duznWELzQlh
	H4PEdpuaRcRWiIKEQiIPdLYzt8In7XFS71kueZx8rO0IhTuiZmY0u4dc0nT2x/N7zHTSQbPUhgmyH
	p1NuUbanAO7baJGAFGjRHGJyIyECGvHD1fIfsAcTKbs4K3DgxiDhDDu/kp185X8fL9Ny7Z0LBCpOR
	kGIAYZUc3VP16RKgplsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9wE-0002sQ-Lr; Thu, 02 May 2019 11:31:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9w9-0002rU-Pc
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 11:31:39 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D370531A6E17
 for <linux-nvme@lists.infradead.org>; Thu,  2 May 2019 11:31:36 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3DC085DA35
 for <linux-nvme@lists.infradead.org>; Thu,  2 May 2019 11:31:36 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/2] Few NVME fixes
Date: Thu,  2 May 2019 14:31:32 +0300
Message-Id: <20190502113134.20835-1-mlevitsk@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 02 May 2019 11:31:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_043137_901829_F8C6FBE6 
X-CRM114-Status: UNSURE (   9.54  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

I am sending here two fixes for bugs I found during develpment of nvme-mdev
driver.
Patches are based on http://git.infradead.org/nvme.git nvme-5.2


Best regards,
	Maxim Levitsky


Maxim Levitsky (2):
  nvme/pci: init shadow doorbell after each reset
  nvme/pci: add known admin effects to augument admin effects log page

 drivers/nvme/host/core.c | 4 ++--
 drivers/nvme/host/pci.c  | 3 +--
 2 files changed, 3 insertions(+), 4 deletions(-)

-- 
2.17.2


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
