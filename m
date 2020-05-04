Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8931C3510
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 10:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Fx0jDfzXE7ptpTZcq9/IMRkiYlSHhTL+eBqdmI7aq+8=; b=Qv9
	UWs/1Vhxm9gUrpyC9sH6kCMIs+61EjM3DK/2kbVoEt1Sj+QTVLfHRcRV0S8iKqxuD2/wf0xyowtqx
	deL8N1aNqIzFT/aIbuDFoCOKciWQ6U+3osw4Nx+Rpyol6jhqdgK7VwjvDESbiTnLdXHWoZYTy+GDG
	B4QdcYq5ttD+twiyJg4g0JqSQPoGimpBkYgK2Aqwmw+k5X18OV5RietUwyzV8ifWl7hKqwXDUeqYX
	5mYH1LzEx1pV2FRr4bilTJFz1EJvBkXQwYDdN2UYg+V4+xqfhgBGPyeR0ImPtKwYtypax6IVEDgRh
	r2niS7x7vq5J1XFeVrENoUTnCuj5WKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWuN-0004MT-8X; Mon, 04 May 2020 08:57:03 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWuG-0004Ld-TC
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 08:56:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588582616; x=1620118616;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HNeJplQ2v5svKP+gdHXrFDwx1UapUshCufEp/mEnwQA=;
 b=NgmmZLx0bNryjUArpQIbXFJa+ZaXEGzbJxbRHHQXcxLs6PVoRE6fwpMD
 rwEJRcw5C+4Gg5K2u3E+DC1yfK7iN/bVi4Z93B5HsUYDGlxpPNeRglCY8
 es0eYZC8nh0xZEiyVuDyFK4vlxuurPXp7TT4b8Lzd54YhWXxPud10Q6pU
 YjyRwUPpO66QHc5Nd+U6Iqxc+DDE88j0ZXDOIIIHOcLy7nv21uvIIxn3S
 LgFNBOzuzoTrqEL0O0yYMuw5DL39OTjbIzj1mPRI4/3ngr0InpBRxP7c7
 3gWQwJ40ze6/agZMRx7WZyTIwLGZrHk2R+cEpG9hKf929hxUgv6qNVXeL A==;
IronPort-SDR: PF6TLEoGRl0HckmGn9buye3ZjTRr4jMmArkBDrM8BCGoIVRaEybQYAD4MrGo26CNEQzzIsu4jM
 +2O/L2EiWfsWpQ78Fw97ZkepGtT+ZevYtQ53JTK0mR6gAkrroiEp/8eedKi62gVwodHr9TsNNy
 h7T3vCbmBiZKa7Qs7wVBgEAuuSYMI6PgyALJ8q6HiHEqlW/uietEB/A2xO6B/xY16nOpfk1Pxa
 1iBKhSe7fRCFdfooegBS+n3gbCruCq8gLSTDduMsSZ18yqtt1lx1BgpHa39SmoKo8bdQNaarNT
 eEs=
X-IronPort-AV: E=Sophos;i="5.73,351,1583164800"; d="scan'208";a="245696691"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 16:56:54 +0800
IronPort-SDR: SGL2IXpHar8XqQzbw4LeA/muyidBJseeR1yLwGn8yj17szlPbuGzZ80E4z/G4qJou7sIDzxk/l
 gShKgyCW1VoDdPBqdc9lbZxYRrMun0Wos=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 01:47:24 -0700
IronPort-SDR: bGWJF4QWQbELpG7/m3JhArOVAsYptVZZV4JK6YSoMTmHReUPR1YH4KjTZAjMxk/lP4GtEhSwBE
 +H1HLLXNxlrA==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 04 May 2020 01:56:53 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 0/6] nvmet: configfs code clenaup and fix
Date: Mon,  4 May 2020 01:56:42 -0700
Message-Id: <20200504085648.15549-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_015656_954289_F313BE33 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 sagi@grimberg.me
Content-Type: multipart/mixed; boundary="===============2195285958324660302=="
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--===============2195285958324660302==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Hi,

Over a period of time, configfs added different attributes and groups.
These groups and attributes have common type to name mapping
functionality with code and identical structures (see [1], [2] & [3]).
Where [1] and [2] adds a different structure which can be made generic
and can be resued by [3].

This patch-series adds a new generic structure for type to name mapping
which then used in the [1], [2] and [3] to align the code for 
consistency with removing the code duplication of
struct nvmet_transport name and struct nvmet_ana_state_names.

In short we address following points :-

1. Introducing generic type (identifier) to name (string) structure
   nvmet_type_name_map, by removing the private per attribute
   specific structures (nvmet_transport_name & nvmet_ana_state_names)
   for defining the type to name mapping.
2. Keeping the code consistent with the use of for loop and type-name
   struct array iteration instead of the duplicating strings in if/else
   latter and switch.

Regards,
Chaitanya

[1] struct nvmet_transport_name :- 
commit <a5d18612295a0>("nvmet: refactor configfs transport type handling")
[2] struct nvmet_ana_state_names :- 
commit <62ac0d32f74ea>("nvmet: support configuring ANA groups")
[3] nvmet_addr_adrfam_[store|show] :-
commit <a07b4970f464f>(" nvmet: add a generic NVMe target")

Changes from V1:-
1. Keep goto found pattern.
2. Remove locking for port->enabled in the 5th patch.
3. Update the commit descriptions accoeding to changes.

Chaitanya Kulkarni (6):
  nvmet: add generic type-name mapping
  nvmet: use type-name map for address family
  nvmet: use type-name map for ana states
  nvmet: use type-name map for address treq
  nvmet: centralize port enable access for configfs
  nvmet: align addrfam list to spec

 drivers/nvme/target/configfs.c | 184 ++++++++++++++++-----------------
 include/linux/nvme.h           |   2 +
 2 files changed, 91 insertions(+), 95 deletions(-)

-- 
2.22.1



--===============2195285958324660302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============2195285958324660302==--
