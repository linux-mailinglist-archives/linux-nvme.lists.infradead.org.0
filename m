Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7A11FE01
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1FtI/epQOOwUWJ8YxSzKw5dZd7Lb4FX8Wg8hrK4D/sA=; b=XjB
	mwlEXGqIOFu5qZhcPj0yg0bEr6FwTGGPsigbk9u0tYya3ofFf8B5sAcMjQtYkDM+dKmBS874tbg5c
	g1T6hZ9mcQhb+MToUoyzO1JMyE0WbdLcCSgggQ856rZAZkN8Hh7r/siUWwxdkLwMsrXenDK1nCdUP
	HjbycwFJCQjKPyXR7C3U50vQp4zxPd8ONexg1ZP9KQqQ7GuHaol9pdQFSTDP2+ZB6lAybVQzKHVu7
	rzg3mwgN08hmaod9S+ZAhws+xKVp9hTPYFzFW+S5U0a08UA6ot9WF77qlE66XCWtaE5BeoZBaeNnX
	9zDCzxLuPGXKr42Q1y2f8N0J+AMlfkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6xU-00057q-HO; Thu, 16 May 2019 03:21:28 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6xO-000572-O5
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557976882; x=1589512882;
 h=from:to:cc:subject:date:message-id;
 bh=ZvHaRC68OFw22QKP80KJzr+LQ0P5iVBm5C8XZYIutnw=;
 b=CgGx5bG6vbIwCYPIxeF0jyWadrMjEEC7UzCM/LBgnBwYcepwWKnHOlX8
 d/yCaPjgESDjvJdNxmYPPl+vWzRFHeg+UY6rWjSMCIa5fPGPAt35miqn7
 oxAn2M+Q/6OsKx9POPNbJOTlD2ou+WDh5mOqRnPrO+SV2EXR2KVp1MjHW
 vgdwbtPKfEBRGmU6ab9I4qQIX4V7W8hS0wbbV+fCTRjFntu9NK3HurfWJ
 6pqIe0SYpw8ufIbGhxYI3R/D6Rdhq6xTbUuKamMdgXI83cNcSqs2Wwbdg
 BSnX0pOAw01cyRw0v0xVuZ3AAPyl2CBoET7WtD4X+Ku3Nu21atCvT8q/c g==;
X-IronPort-AV: E=Sophos;i="5.60,475,1549900800"; d="scan'208";a="214490442"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2019 11:21:20 +0800
IronPort-SDR: NDrhsDCBb6x+4cx+kKzESGX2/9XCz0Klo/mh6of8jp73USfbiQlHo39Znq7h8bnLCpkNEi0dH5
 Adk6tfJdSLorwyB0TPYz+p5kNU6Bdi8dAfjdTwjN3hBOwGmL0Tz6b1pqi5dmFJkZa09tChQ/ic
 jjnhBAXb9yTizZXkecAksBhL/rcNshPycX2ZbNd6VRrO+tnNSAi8REuaMhy+D6XgC2SSkAmIcM
 OO/jg8ZQZmupxHM5bw1WKyKWwD8dcsfjEGN5SvCaZplYu6wctLYidpXiaNc+MXlJl8SU67yENn
 tll3bV/C5lu9YNCeN35xALIS
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 15 May 2019 19:59:15 -0700
IronPort-SDR: m4LKd6r3tbf0PF+cdko0gODSCc4ilQmbwhZ5FxztVLj0m6ZbxQrL18GhXVgVaW6B3wsPUrarV2
 egIpq6A/1r1q2w4CZtmttuoD5CMIItN6b49J9W5quUtP3oClGMLTLmNEstElI/5gkY8/Pylw9J
 qH4B7KIZObpPKvRJKEbjXxjV99PUMxysTzPjO7FoRZLeXnKYvlCZdsS3MdF59nsW17KKkuDvxw
 B0P5y6Vc0OdLg67ITGxhp70YTNgFWUS9+peLl/MTWN+PNTB8kYIHyPtMUC/rhfVgShejNTInTP
 Bng=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 May 2019 20:21:21 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH RFC 0/4] nvmet: add support for port based io priority
Date: Wed, 15 May 2019 20:21:04 -0700
Message-Id: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202122_923558_E355A965 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jthumshirn@suse.de, hch@lst.de,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

This is a small patch series which adds the support for port-based
ioprio field so that user on the NVMeOF target side can set the desired
io priority from the configfs.

For each request, we derived the io priority value from port associated
with the request for bio (bdev) and kiocb (file).

In this way, the target side can prioritize the port and eventually the
io request if the scheduler (BFQ) is in the picture. 

This is useful in the following scenarion where:-

Port 1-------> NVMeOF Ctrl1 ------>  NSID1______
                                                |------> ----------------------
                                                         | Actual Namesapce A |
                                          ______|------> ----------------------
Port 2-------> NVMeOF Ctrl2 ------>  NSID2

Any feedback is welcome, I'd like to understand if this approach is desirable,
if not then what is the right way to use the io priorities on that target side
so that NVMeOF target can take advantage of the scheduler infrastructure ?

Regards,
Chaitanya

Chaitanya Kulkarni (4):
  nvmet: add iopriority definitions for port
  nvmet: allow user to specify ioprioty from cfgfs
  nvmet: set iopriority for each bio
  nvmet: set iopriority for each kiocb for file

 drivers/nvme/target/configfs.c    | 76 +++++++++++++++++++++++++++++++
 drivers/nvme/target/io-cmd-bdev.c |  1 +
 drivers/nvme/target/io-cmd-file.c |  1 +
 drivers/nvme/target/nvmet.h       |  3 ++
 4 files changed, 81 insertions(+)

-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
