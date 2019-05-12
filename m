Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 866241AC49
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 15:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lgG8MsoUmuu/PnF4CHhIEBUBbBwsBYTIxw0uuwz3Fcg=; b=fPv7z10A/Oq5VRVs5MLMtIXj6
	5lskmiEqWR64we7nEAkrUPAks3POZW1rN7QRpaCgCNMUe7tEqJIX7qigRMCPJpHgRNgizwAmRxxcn
	D6UKlgw/iIySSIsaA0VzMf84XTnJ2fQ1aO4dHJR85it2divCYdtoJVU2ZNNsVBCrXhlGEa0j/EJ23
	yfdOJuTqyCV6fb6V07R66haX4tmdXZJtrdJMJMeX91uA25hrV3mOMw0E1U8vuI4PiELt5AbEJoc7g
	m2DR6a0WLYgG6UzNy8H29R2tLzWlWsYTK86OWhUkq/u3ri6u0uawtGSZA22+dHYclIqskXjIMdJ+/
	WTnA6Ii4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPoEC-0003jp-9d; Sun, 12 May 2019 13:09:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPoE7-0003jO-L4
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 13:09:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id z26so5685659pfg.6
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 06:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9INzTHj97jlyE0VhsfFSMVk6Lg66fDTSu8XBnWbA9DU=;
 b=EeKoA9la9lv4sf17wY/a2TrIrM99xZ6UD00obI/+bszmzsVMK1ZV8AKkGDTuHh+ygF
 sjn2nDxEqiTRhg5LETfoD/tL15SFGOtIaSdc0qRMe5QAAmzM8IQrFj1+BCdb0AHjaOdP
 2XTU4ACamswuXCw+P/jez4Q8uepSMrt7SoJYCgy8YhZ8hnKL4j2p/7sg/tOE4Gxd8gRs
 +TwyNv8Il1HYpdQCtmbWkjHCsNN+wzyZWaVdSN9wFD6H1Ka+PHVznXLTku/vLDlvuKH2
 yPo/dQk4dSONDZ0HW2a3kr4fBXwLkoBsXwh8chzyPbkXVenReCFT+7dQXU1h9vfenb4f
 DGIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9INzTHj97jlyE0VhsfFSMVk6Lg66fDTSu8XBnWbA9DU=;
 b=fDOyigIYqtIJCH242A00MyGTLRnFgoLrMl5X/XeHnl2H9qJT8ADRIdAITC4wF4iKab
 zExPd6UWQez8TCuaoZP5LR+kN8GEXjl4dRQsYtfoV/KKqRBNm6ibXdgQDfsaZh11ddtQ
 I/GZxGDGJm/PqIAiwX7lnCkoT43mWYdglDEgFB9rK/QhYJOPG2BICwLJBWy5PChLCHam
 xqyDKiuEOjZxIVyXSBHVodsL54M7OdnOIWuadR9nVGPrql+uNfsfVkmA7OxA3jykGRwZ
 bGFCEZ7bb5R2+FkQCrxqnyAJXXi0LkE2U7u/fOOaQBZyG1YvcZonAInn3A99bop1mby8
 41wA==
X-Gm-Message-State: APjAAAVsCb3TJIyyX0WMir3J3jPrGojsGWGEYWimPfpESp3yP3kmfOWo
 a8h3+yEvnahbH+Yznlw3oDE=
X-Google-Smtp-Source: APXvYqyFmWQJH33IFhLsWw8immWLIy7LaZ3tl5B210tjSpQUYuE4Tue5tmLviCkvgxkJXezivEYOHA==
X-Received: by 2002:a62:2b82:: with SMTP id
 r124mr18900843pfr.235.1557666554822; 
 Sun, 12 May 2019 06:09:14 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 10sm13142490pfh.14.2019.05.12.06.09.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 06:09:13 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: Fix queue_count to consider nr_possible_cpu
To: Christoph Hellwig <hch@lst.de>
References: <20190504113923.32316-1-minwoo.im.dev@gmail.com>
 <20190508071456.GA21604@lst.de>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <0ea5caaf-be54-d0d6-49f7-a47de00711fd@gmail.com>
Date: Sun, 12 May 2019 22:09:09 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508071456.GA21604@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_060915_686935_D0AAF375 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> This just looks weird.  If we ant to limit the number why not
> get rid of all these param_ops stuff and just verify the
> number in nvme_calc_irq_sets without all that boilerplate code?
> 

Hi Christoph,

Thanks for your review on this.  Module parameters which are with 
param_ops are currently the following two things, as you know:
	(1) write_queues
	(2) poll_queues

If those two things are used in nvme_setup_irqs() and 
nvme_calc_irq_sets() only, then we can remove param_ops things and go 
like what you mentioned.  However, before preparing irq sets of them, 
the following function is invoked to find out proper nr_io_queues by 
referring those modules params.

static unsigned int max_io_queues(void)
{
	return num_possible_cpus() + write_queues + poll_queues;
}

if max_io_queues() gives nr_io_queues in a too large value, we need to 
do something to fit it to proper value in nvme_setup_irqs() or 
nvme_calc_irq_sets() which might be also boilerplate code.

Please see the below code and give your comment on it.  I guess it also 
looks not that really good :(

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 2a8708c9ac18..28e43627da5a 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2073,6 +2073,16 @@ static int nvme_setup_irqs(struct nvme_dev *dev, 
unsigned int nr_io_queues)
  	 * Poll queues don't need interrupts, but we need at least one IO
  	 * queue left over for non-polled IO.
  	 */
+	if (poll_queues > num_possible_cpus()) {
+		poll_queues = num_possible_cpus();
+		nr_io_queues = max_io_queues();
+	}
+
+	if (write_queues > num_possible_cpus()) {
+		write_queues = num_possible_cpus();
+		nr_io_queues = max_io_queues();
+	}
+
  	this_p_queues = poll_queues;
  	if (this_p_queues >= nr_io_queues) {
  		this_p_queues = nr_io_queues - 1;


Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
