Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B5C5B782
	for <lists+linux-nvme@lfdr.de>; Mon,  1 Jul 2019 11:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s1CKk3f54Oxp2FfTH0bOcDSBySW7aXzD4YU0AiTvpiw=; b=AOPKRBvkqr1cI/
	RwglgZI4Ys/2YXwdqjnFTWkdT57wthFyFPnoStee4AlCQIvQ9aAXD6IBX11v/RcBzyLbDq2RkZrjJ
	T5YwxAFtvrAwamV6+Ns52tG7FQi1UMC40yGQ7SpuaY7LYmWeErkovy5C+iAudAHx6BXNlZY6fedg5
	UVzVSNUYeU+5pNPf8Jwl8Jfw1Me5av91y8gp7vNJCI2Bl0hpfPofEyfc7aiNZkx/oPNoGgiB7PMi+
	+SQPo0JYyNRRLvjTak7O7hFB0xlDx32gzNVwsrbKxQzaHXdL/Qt/UusBbez9p2yWaoEj/Owf2QR4T
	imN8ISb/OarcnHtKZCqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsMY-00031A-Ct; Mon, 01 Jul 2019 09:12:38 +0000
Received: from smtpout11.ifi.lmu.de ([2001:4ca0:4000:0:141:84:214:246])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsMK-00030l-Bq
 for linux-nvme@lists.infradead.org; Mon, 01 Jul 2019 09:12:26 +0000
Received: from [IPv6:2001:4ca0:4000:1011:141:84:1:30] (galois.bio.ifi.lmu.de
 [IPv6:2001:4ca0:4000:1011:141:84:1:30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: steiner.bio)
 by smtpin1.ifi.lmu.de (Postfix) with ESMTPSA id 86AD42562AD
 for <linux-nvme@lists.infradead.org>; Mon,  1 Jul 2019 11:04:15 +0200 (CEST)
To: linux-nvme@lists.infradead.org
From: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Subject: disk-activity trigger not working for nvme disk
Message-ID: <79f17609-5b3d-0d29-1642-c9ce30beb7f9@bio.ifi.lmu.de>
Date: Mon, 1 Jul 2019 11:04:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021224_558273_8160AF2C 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

I hope this is the right place to ask, people on the ibm-acpi-devel
list sent me here :-)

It's about the disk-activity trigger for the led kernel subsystem.
We are trying to turn e.g. the num lock led into a hard disk activity
indicator by

echo disk-activity > /sys/class/leds/input0::numlock/trigger

This works fine on all our older thinkpad models with SATA hard disks
and works also on our PCs with SSD disks (SATA as well as NVME), but
it fails on our newer thinkpads, i.e. T570 and T580, with NVME SSDs.

The LED just stays off all the time no matter what we do with the hard
disk. As all other triggers do work, people on the ibm-acpi-devel list
supposed it might be an issue in the nvme driver (and not the thinkpad_acpi
module).

If that could be possible, is there any information I can provide
for my laptop to help figure out the reason for the non-working trigger?

As far as I can see the controller is this:
40:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd Device a808

and "nvme list" shows that:

Node             SN                   Model                                    Namespace Usage                      Format           FW Rev
---------------- -------------------- ---------------------------------------- --------- -------------------------- ---------------- --------
/dev/nvme0n1     S3TPNX0M234146       SAMSUNG MZVLB1T0HALR-000L7               1         808,83  GB /   1,02  TB    512   B +  0 B   5L2QEXA7


If this is not related to the nvme driver, do you have any idea where else
I might ask?

Thanks a lot!

cu,
Frank
-- 
Dipl.-Inform. Frank Steiner   Web:  http://www.bio.ifi.lmu.de/~steiner/
Lehrstuhl f. Bioinformatik    Mail: http://www.bio.ifi.lmu.de/~steiner/m/
LMU, Amalienstr. 17           Phone: +49 89 2180-4049
80333 Muenchen, Germany       Fax:   +49 89 2180-99-4049
* Rekursion kann man erst verstehen, wenn man Rekursion verstanden hat. *

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
