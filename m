Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F3715476
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 21:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mBcfK8506CxroJZcam9sDhy2+Q+WXJBK0qQHC+fSE5A=; b=LpA
	LfwwvF35o0gKhsp4Gu26FloSZbdAMh+4+L5HCdeiCD6U4H+H2wfH6DaS17tV1hUdOwwh9dlLEwHvU
	i4+B/hSa6TMFvya8xIdaCFfcU4vlor3ZwhODA5hkH/RGCiXdEat7JvpR4NTqEbIUxGV7VLDqoUkVB
	Xl7vAAudAUm0Ax2OtbUivC4G0R8ubWVBcriiofbtIeLqMzJ7iUXuqRiR5pjWJ6ZFjDUyRP3Xb8vhi
	3QT+XZeYwq6p/t2+3ORXDGnB5iBodSMynakxaTyDcGV4b6tVkddCIL0zfcA8koFDFF5HdrYBzebgC
	QJagdKPiWYAa2ylTOZTCV/67R4me/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNjMe-0001lc-Oe; Mon, 06 May 2019 19:33:28 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNjMZ-0001lD-Kf
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 19:33:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557171204; x=1588707204;
 h=from:to:cc:subject:date:message-id;
 bh=DCQF7k62oJhOhpX+FG2F1UYGZMHrrNg2DPenI1O3bx0=;
 b=O0LQEMkDdFAujGkf5H+97obwUWHy7HNDY0uMM3iqK7lF7xms7S1HHxfc
 XmgRovnS+7tnAnnJHE2gpZiSUqNhmsDk3tPEOFG0ISxlaaIm7mVsoo/0b
 bd1HG5oHocgxib+KHlHGPDeU0pDBB9FVaDlxYUVhngGe0Bpno/NnTiqq7
 VtnxHZ+j25IAkiOL1yRjl2B+K3LRw1pFDxk8uypXizdnlQzAbXrx8gAxk
 ZMl9XH2KQe12T/tEWcYjxcq7EZdTe5jpbW4JE2u0jLT6T/cz0ehX803mM
 k6cw13v1zZ9tdu2pDqdFNOFWu+UbRXcChO4cN1YSsgsil9UMvuBOP6Epa w==;
X-IronPort-AV: E=Sophos;i="5.60,439,1549900800"; d="scan'208";a="112584967"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 03:33:22 +0800
IronPort-SDR: csqNDcmtJ7DuFDhZ4jbSnlvQR4Us4Al8jEjvAGAt1AgALztFnJdQvyYa+HJYxvLhRXl7v+ITcG
 2VOZnwheIzVfQ8SdGOu7xBvHCrRC+6fDCzye1Dw7f/rBCRgZxp7C5gEFazUmS64fQAVAP8G9pJ
 2jQjbmx+xFidV5Sqp338S9eZWqBAbnslq/Lr72ixpR50aZUPeOnRZopkH9ixFT87UoXF/TW3qz
 KtOt4A6dnhpb7lOAkZAupGQp1Ah+J/SHluqrsMF4m8qc/m7rhrs7jcCaMK+cdc8z0gayAoMwvp
 jqTJEluZJs9v4t+SsK8OXMAZ
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 06 May 2019 12:11:38 -0700
IronPort-SDR: GkZOsylvn2HTHxFV8KTDKxq9RCe6YhFnrq2hy4f8Rz3CDQ4h7cIYxcPY+J/o+j0AeHDixre7iU
 eA5qyrXeOyWTlOvF5TlV6YL1mgM43evtG8GjmiDWhJB6Z5LbpqXEtP59jaF7E61+j0nAwWqmjv
 MloxRk4Rxshk3NHVF7D3dRJtHA4wlDCaJIRx2RCq5O18KD7nbiRtBDYMIfkGcngEAfdnrw2f4T
 GUBZl6rISG2rapRBEB3Cb00LBIcAhcesFlqDnfyz9CaY6BiCFg35vxxgj4R+Eg4CewKQh/GrXj
 m6I=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 06 May 2019 12:33:22 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-core: trace discovery log change AEN
Date: Mon,  6 May 2019 12:33:20 -0700
Message-Id: <20190506193320.30884-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_123323_712104_A71EBD10 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch allows the user to trace discovery log change notification.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/core.c  | 3 +++
 drivers/nvme/host/trace.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index cd16d98d1f1a..32e12ee42785 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3615,6 +3615,9 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
 		trace_nvme_async_event(ctrl, aer_notice_type);
 		queue_work(nvme_wq, &ctrl->fw_act_work);
 		break;
+	case NVME_AER_NOTICE_DISC_CHANGED:
+		trace_nvme_async_event(ctrl, aer_notice_type);
+		break;
 #ifdef CONFIG_NVME_MULTIPATH
 	case NVME_AER_NOTICE_ANA:
 		trace_nvme_async_event(ctrl, aer_notice_type);
diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index 97d3c77365b8..f2fda5fb01fb 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -165,6 +165,7 @@ TRACE_EVENT(nvme_async_event,
 		__entry->ctrl_id, __entry->result,
 		__print_symbolic(__entry->result,
 		aer_name(NVME_AER_NOTICE_NS_CHANGED),
+		aer_name(NVME_AER_NOTICE_DISC_CHANGED).
 		aer_name(NVME_AER_NOTICE_ANA),
 		aer_name(NVME_AER_NOTICE_FW_ACT_STARTING),
 		aer_name(NVME_AER_ERROR),
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
