Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EDC12E37C
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Jan 2020 08:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40WED9bwvKlJZehnJNkxj66AFiwvN6SDAdY+LE/X7SE=; b=Ws7y4OaLAn57/i
	u0rgQqnUOsffo+PuW/I4jILyeXqx7UJIbjBcK86gc9XHs9msOnTkZZwfEqz0MD1ciT410S+9pY+jS
	m/PahlwqbIff1eVK3EzprhgKCCcr2X0rFUUKyV6l/uNTbuao+1hpZ8QAjNfsnZjxtoJZXeOoOyPN3
	RSK66joxNmfQuZu/pkXjBm/epzxXQIDClaTADg0rwqD5jaPkm1e6Ix2bK2xkH2rvT0Bv06uPd6oYV
	Vz0nVssX/PoMPXCsEF+ICwEkyK1mMeEMAcqnPo6ProQ2iky9CBL3HyuPccq+z7gMvlUCL/u0OHP7d
	Xb3JKx3c2IpGyFDxKg+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imvJ1-00022A-W8; Thu, 02 Jan 2020 07:54:08 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imvIV-0001d4-IW
 for linux-nvme@lists.infradead.org; Thu, 02 Jan 2020 07:53:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1577951616; x=1609487616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=x51IhYE1QyMmY3UHAvxQPb23Eyep04ViD2uP480XSao=;
 b=pddTFLYHv8OvDL5cOTlw+D5UVYQ2nuhETA8VXsShHlEMLzFzyCdKKZ2Y
 G/CyksK76UQIZKzft3ywUHX863lO03yMdw6LiphOosVa7I5w/fpf+vp4V
 oShJ6CwpaDO0p+rZ8jFex0XUntpi04kR8qRlrMTIOrAgQ0wNLadlgzVjN 0=;
IronPort-SDR: bFnmoTpJxJQMchHcpI9J27Stgt9IouSGesc4w8HXeVrR5wfd4SV+365A1W/FeBqf5BPo8Uu4pc
 vV0LIyF28eVg==
X-IronPort-AV: E=Sophos;i="5.69,385,1571702400"; d="scan'208";a="17779141"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1d-5dd976cd.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 02 Jan 2020 07:53:30 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1d-5dd976cd.us-east-1.amazon.com (Postfix) with ESMTPS
 id D7E14A1DD2; Thu,  2 Jan 2020 07:53:26 +0000 (UTC)
Received: from EX13D11UWC004.ant.amazon.com (10.43.162.101) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 2 Jan 2020 07:53:25 +0000
Received: from EX13MTAUEA001.ant.amazon.com (10.43.61.82) by
 EX13D11UWC004.ant.amazon.com (10.43.162.101) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 2 Jan 2020 07:53:24 +0000
Received: from localhost (172.23.204.141) by mail-relay.amazon.com
 (10.43.61.243) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Thu, 2 Jan 2020 07:53:23 +0000
From: Balbir Singh <sblbir@amazon.com>
To: <linux-kernel@vger.kernel.org>, <linux-block@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>
Subject: [resend v1 5/5] drivers/scsi/sd.c: Convert to use disk_set_capacity
Date: Thu, 2 Jan 2020 07:53:15 +0000
Message-ID: <20200102075315.22652-6-sblbir@amazon.com>
X-Mailer: git-send-email 2.16.5
In-Reply-To: <20200102075315.22652-1-sblbir@amazon.com>
References: <20200102075315.22652-1-sblbir@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_235335_648779_8E41C1E5 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: axboe@kernel.dk, Chaitanya.Kulkarni@wdc.com, mst@redhat.com,
 jejb@linux.ibm.com, ssomesh@amazon.com, Balbir Singh <sblbir@amazon.com>,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

block/genhd provides disk_set_capacity() for sending
RESIZE notifications via uevents. This notification is
newly added to scsi sd.

Signed-off-by: Balbir Singh <sblbir@amazon.com>
---
 drivers/scsi/sd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 5afb0046b12a..1a3be30b6b78 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -3184,7 +3184,7 @@ static int sd_revalidate_disk(struct gendisk *disk)
 
 	sdkp->first_scan = 0;
 
-	set_capacity(disk, logical_to_sectors(sdp, sdkp->capacity));
+	disk_set_capacity(disk, logical_to_sectors(sdp, sdkp->capacity));
 	sd_config_write_same(sdkp);
 	kfree(buffer);
 
-- 
2.16.5


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
