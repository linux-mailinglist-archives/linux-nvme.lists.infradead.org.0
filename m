Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA851768ED
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Mar 2020 01:01:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9L3Sef5aU7ejMO3OXKW+mSY8LyORxx4QNWrQC+jVv9k=; b=hozhVo/RjSQDTg
	+tpO3DXQRR4y3obctbwd7jvgbDIIvKPmtRruQQrKfgoGZrTUx24noDObj/CSpWLFctefK7FBphlRt
	yO00Fq2Kz6LbtRILWq7dZTs+SlzljLqdQ2Bmf4of41j6unsGYHk4VuQOmiPIuRJ5Arj2EXgsyf3J6
	5jp3gZ7MwTCISDfMWgZxWegTj7Hk9MlA+IPAJjM+z7+XnlQdaeXhZVBh9CBGScJeVVMMnoEqdXOnx
	pCOu0TDIl6rTQ+RqdoxSW0RXlI/YtfyKZRbVl04uvJVd7SuddqYxg3jW28AQCrSCUkgxUcFxvExYd
	gwsacAzM7fJrekMfaC4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uzj-0004HZ-O4; Tue, 03 Mar 2020 00:01:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uze-0004Fc-5d
 for linux-nvme@lists.infradead.org; Tue, 03 Mar 2020 00:01:04 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09AE824677;
 Tue,  3 Mar 2020 00:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583193659;
 bh=rHOkyRJFWvs8M9OvOQcM/aXP4H89vcMEbwezKhgWbZc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N09cArY0YYiTfmO58X6VhjgOGVr3KtSbCzvrK+Hw0uBnvzjHKbQFxjF/wXfAsWyo1
 4fw1JSttU8Hn3lhpGA+SJKDBqnHMGYPakMJfvRMD/ZVz+FTfObZMejX5iZEzj0Qzlh
 tIjtEJubZjO2QFiasVg2xiixS639q7L/4KsfFuWg=
Date: Mon, 2 Mar 2020 16:00:57 -0800
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH V3] nvmet: check ncqr & nsqr for set-features cmd
Message-ID: <20200303000057.GC2393@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200301002841.3959-1-chaitanya.kulkarni@wdc.com>
 <b80fc04a-a10c-7967-80df-05e61ab0106b@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b80fc04a-a10c-7967-80df-05e61ab0106b@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_160102_234266_72560F18 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, amit.engel@dell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, everyone. Patch applied for 5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
