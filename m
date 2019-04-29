Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 970CEDAB9
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 05:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HpYuIZz7Wvu7TQyZqanhJ9JArPp4NEx9kFdaErJwFbM=; b=pdg
	leq+Kt11iBxtFhB0tbqVg9lyuIL7gXC2knPDw1e4yDqDGuOoOdGSPnRnkWfwws9Wh0ELzdPfjTZMy
	+0LYJeDLsQoRMJ5KOqEw/UzC5XpdLFsZ8BP64/uyg0+x9lbdUfErTdnSfLwWGcQJCPpGIRMUDo5oP
	B52AosGkWmOJhKwc6JOqtB9Axn03EsP8px1/VmzdTwGQRtMnzNMSjLoaNqLEzeJBOiku/k9fEbaf8
	ykl7m7bqCF5JT+cmJJaovI+TQg6FrBrCwza5Iy+jIhGqQcauNohcGH9UCziHmfbs+nkKuVyyMtqJe
	6ktRcvdYR8ae9vWPTm/t/q4Z6uCaEOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwuU-0002ld-Ku; Mon, 29 Apr 2019 03:24:54 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwuP-0002kP-TN
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 03:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556508290; x=1588044290;
 h=from:to:cc:subject:date:message-id;
 bh=eBQohAzgRnXiMgPCvX6ctaoCxY1Y79it9SdnTWg5Hkw=;
 b=gAcLyB38SeN+Fh+E7NPz30F1DYaLBvkUCAHZuwvm/QN/1C8TuqkPRNEw
 UFbbWH5n9hMnmf7yBhcHsM2Dj4c1QAoZyq8KtrshNDkXop63osCZQYp+I
 E9arobgB5YzmSPNxOmgo6iggRxRN0KI4hG596vcbBJ5hRv9r1lzYqQqfj
 fRKY/iF0RNxUGl1r667u3kMVnfElpVh2dg0Ic5HojzIsNKW15ZBDURCvP
 G+nRxkN38Cf0wgVzoDB0PAgzMox/f7wpyvkPs3dQ4UQ4aWlN5xCW8BMLZ
 xTBG6S5O76R0Q5LNGO2pdSrR9jSkGFnCc/zYLymPiOJ6okTGsc+D0zLUM g==;
X-IronPort-AV: E=Sophos;i="5.60,408,1549900800"; d="scan'208";a="108245359"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 29 Apr 2019 11:24:46 +0800
IronPort-SDR: aC8lFlb5uuMz8KF2q/pZ2eariTlh1+/mnWdQMxiSLAOarufjajFWBIPf2/a2rvLOI5CY1q2r/h
 Z0njDp/aNDe2DZJ4K77RzHfXoJiAtGa059MZUMB0k24SOfrWP972H0WmXMhmPgqw8D1KkhqYRx
 AvlYmBHlhFSogchdwilf2wQj+tCOCwYp6gWKajGhxZz1nQCJNCOs36/KNF5H9gcRr2YAT7bw7c
 eIDrmlu6UpbJ6ZB/rg7hffiqjlkUreObtnHBr7nUTZfEkj4qqS0OV4D+Q1Jx9ghliIoaiRwdp3
 IxK5KZmXbfpVn5IVfA6VFsQY
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 28 Apr 2019 20:01:09 -0700
IronPort-SDR: TA+1l9FeB4MLs0iXORvWlgQ8KeXwkdKhYjKgz1xcJMgL8jGXnWcUrnfAruGQBnHKYeZ7dFPBv2
 ruf6IDq2aB9L5KVnYiRiFWsnjIHLI5wjiOhM1mx6Rqiw9I71RehUQFE4bcpiK6yW7YyjnEzB1D
 BdRt3GiAzf+UoS1xgLkoxoWT28Wq2KAin+64DnlWzxID/gectRWpIoSHbnB2SnDBhqgIFdw1wF
 Tcelz4g5LwQqjY4hpk7CICT9EFtL883k8ChDzVPfaPWVaRRjAmQwLrW2Rbjvi7oy4vUGO9J57r
 tkg=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 28 Apr 2019 20:24:46 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/3] nvme: improve logging
Date: Sun, 28 Apr 2019 20:24:39 -0700
Message-Id: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_202450_061760_F849758F 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: hare@suse.com, hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

These code changes are originally posted by
Hannes Reinecke <hare@suse.com> :-
http://lists.infradead.org/pipermail/linux-nvme/2019-April/023336.html

I've added all the comments posted on this patch-series along with my
signoff to the patches. Please keep my sign off if Hannes is okay
with it.

Regards,
-Chaitanya

Changes from V1:
1. Move the NVMe ctrl state array of string to the header file whee
   all controller states are defined.
2. Remvoe extra state_name variable and use the
   nvme_get_ctrl_state_name() when reporting the ctrl state.
3. Add "nvme-mp" prefix to the debug message for multipating code. 
Chaitanya Kulkarni (3):
  nvme: introduce nvme-ctrl state name string array
  nvme: improve logging
  nvme-multipath: improve logging

 drivers/nvme/host/core.c      | 41 ++++++++++++++++++++---------------
 drivers/nvme/host/multipath.c |  5 ++++-
 drivers/nvme/host/nvme.h      | 10 +++++++++
 3 files changed, 37 insertions(+), 19 deletions(-)

-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
