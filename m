Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB396801E8
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 22:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qMHOhIc1Nfnh1TtsElUR6SQ9TCgntb3vZAT2zM8S8xk=; b=H9C1lrVgfHF1GAEgaIgr00LgR
	/MgCbFH88I2vWUrH8608TDOQ9djMQypmF/7cRjg08TBVBfriXqbLK/mPcuOt2HRGPs5unCobEABcE
	cnBX3M9yQ4uzdAW7kzcMTbEHciHuu2K1dv6A4jF0qpvgO8+7d5skKk2danBM/Xb9NwEji1rVF0721
	sS98g+FG+dF50W1N7ZIxo65q558Kjx9+E+19LR2qqE8+YsxzTkniEnJfBR7pm+LUg4jwIvDrJBcmN
	d5oj/rGeEKn/hyQGeCSuOk7BFeFr5IHEQCymcFjl59vCCd8jfxqDrFPO7aNj5Pzz1YIGoftzcwoWB
	keM1DjLqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hteQf-0005kJ-IL; Fri, 02 Aug 2019 20:45:33 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hteQS-0005b8-2g
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 20:45:21 +0000
Received: by mail-ot1-f65.google.com with SMTP id l15so79439543otn.9
 for <linux-nvme@lists.infradead.org>; Fri, 02 Aug 2019 13:45:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mbZjGWnsC5YzbjUEeSv3/gMfAaDKWtPxbrf/11tGnrA=;
 b=bZ0hX3UpOKlrCeoVK9AepR9XLAhCM6BoIZt82MVYBZmoutBw+WS9/6pwynBRLO+LMt
 EVQIvrK7FJamNKUHOlwV2qmj0p4sumhRntcdxS2ESR9h0alQW66Kj1ndakvzGXRr0mws
 +2whge2+sEpuAXCrB7Ai6/X2PiiLLFQb0Ez7KME2F3GKpO3IazYQrhB596fUuaSuio6v
 lFqIdgzrzOuCW1OnywguanwmJEXV3UqivwCy48MX7vvQEeF3co9hYM7jSKBgdK79rRhC
 Imtu2Ifr29h7+HkXP7F7j6/Dg8NAjB33h/yqDR/9kQwuabK04iDK/YMnIfisq7kxs9uu
 rcig==
X-Gm-Message-State: APjAAAXlwNJHbq3ZE4P2OecI/DTbzwzTIjV4l9vG+eW3iVxtMYKwk9Ks
 Z1NVxP/NlNSpQz5JqC2iuDg=
X-Google-Smtp-Source: APXvYqwCyHo3Vvicp5vFO6Gu7bxg7CkyKpJUaTpvowH/9Cq9FzKaMLjuhjhrq0vSBnYOqvOrAfFuDQ==
X-Received: by 2002:a9d:7241:: with SMTP id a1mr84018380otk.219.1564778718765; 
 Fri, 02 Aug 2019 13:45:18 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id p3sm25853430otk.47.2019.08.02.13.45.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 13:45:18 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme: skip namespaces which are about to be removed
To: Keith Busch <kbusch@kernel.org>
References: <20190801071644.66690-1-hare@suse.de>
 <20190801071644.66690-2-hare@suse.de>
 <20190801213600.GG15795@localhost.localdomain>
 <8c71f313-4543-f581-af96-84070b8dbe5e@grimberg.me>
 <20190801221031.GH15795@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <34169b0d-af9d-7493-8cfe-dbbadeeeb69d@grimberg.me>
Date: Fri, 2 Aug 2019 13:45:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801221031.GH15795@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_134520_123403_61A0AEAC 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Hannes Reinecke <hare@suse.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>> This is exactly what I proposed in:
>> [PATCH rfc 2/2] nvme: fix possible use-after-free condition when controller
>> reset is racing namespace scanning
> 
> Hm, I had to look up why the list_del is done at then end. It is after
> del_gendisk() because that syncs dirty buffers, which means we could have
> IO that can timeout. We need the namespaces in the controller list during
> removal so that timeout handlers can iterate them for cleanup. Otherwise
> you could have some buffered write tasks constantly entering the queue,
> preventing namespace removal. The only time should be safe to take the
> namespace off list first is if we've set the queue to dying prior to
> calling del_gendisk.

Would this work?
--
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 6956041224ec..c13cbdc262ee 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3418,19 +3418,21 @@ static void nvme_ns_remove(struct nvme_ns *ns)
         synchronize_rcu(); /* guarantee not available in head->list */
         nvme_mpath_clear_current_path(ns);
         synchronize_srcu(&ns->head->srcu); /* wait for concurrent 
submissions */
+       nvme_mpath_check_last_path(ns);

-       if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
+       if (ns->disk && ns->disk->flags & GENHD_FL_UP)
                 del_gendisk(ns->disk);
-               blk_cleanup_queue(ns->queue);
-               if (blk_get_integrity(ns->disk))
-                       blk_integrity_unregister(ns->disk);
-       }

         down_write(&ns->ctrl->namespaces_rwsem);
         list_del_init(&ns->list);
         up_write(&ns->ctrl->namespaces_rwsem);

-       nvme_mpath_check_last_path(ns);
+       if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
+               blk_cleanup_queue(ns->queue);
+               if (blk_get_integrity(ns->disk))
+                       blk_integrity_unregister(ns->disk);
+       }
+
         nvme_put_ns(ns);
  }

--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
