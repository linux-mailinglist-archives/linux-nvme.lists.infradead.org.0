Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5E679A01
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 22:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TuJ6ehPUJoJqsF+rAlWilOSWxqrAayaX7dMRzNKarBw=; b=SBFCUrBZIX+Cm3TFM1b3wvypQ
	dfJKQ2GfzwKHt65IzcPqI6l9bC/3bCTVOpa7GLfrkrLJNbJlWviwabCyXbDdB+VY1D6gDx7BL14Su
	HMi1TaFP8oekg1SM/UsKevCbb7yAshi632ng8ueJZl0c5eipIaa8a2VchdOLv1FAV/A2SoiY+RUvW
	knRCX9noBWGe5xfvQQrWRyZri5SAwpj3Uuzt8NpT8YtZKdaNpVMpaJsgVyTZQeiLznIlr/VZ56Qu1
	e4HW6cbxkKeswwAhMo0I9iGPeulcIj97Ep5knzZeYS9EfowtHQVOWpGSaZy3hdSplmfzusF1uiJtu
	MF/LvdccA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsCIr-0006wY-WE; Mon, 29 Jul 2019 20:31:30 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsCIh-0006wE-4D
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 20:31:20 +0000
Received: by mail-ot1-f65.google.com with SMTP id r21so57910264otq.6
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 13:31:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mA87o8XMJf84xM+MSLtFw2yI3gJkmSIgQoe14WzuZts=;
 b=aS63TKu0iSqR6NF1hro+NcmCE8OxIDS5YhMgX/Yms2859w4bAQR2sQXxSifnjJQQLk
 RxExlecm5B/SJozacCvLXX3QjrRu6B8+nktoFsPppBtkMnGDuuLViSxn+UffiTCH6k0I
 Zb+LSa4wKJsXQUTWNTO0U7ThlMoTkK1fYkdPhX9fLVdBttiQJlAxth9wZJ+B/5LqBR+g
 IcclbCtAwb2vHXZpQurGhLt+o9SsSQaK6tD8wvMB3t7U0NYAsjTi4Knol9zignWBqnI+
 MnST/cDTk4WbOgebJ3KhPftrYp/9NpFarjRBjQLjuweKr4Ui5ax4wE+TByc5qumm2Iyu
 3fcQ==
X-Gm-Message-State: APjAAAWKhF4SRuQO8eOXZ5h3Qm0mUMcgTpPJqxrH1bppc6zUxeoaF1jI
 uiPt1kgE2tl9J9IxuWTp28E=
X-Google-Smtp-Source: APXvYqxVEMOrFj57ah7fcFjmoAJfITvDg5SfAQKE/YWObXZ6cmPaTEobxnVQLSmGAg+q5m5pmNlAhw==
X-Received: by 2002:a9d:3e4e:: with SMTP id h14mr80925382otg.182.1564432278044; 
 Mon, 29 Jul 2019 13:31:18 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id n26sm21683308otq.10.2019.07.29.13.31.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 13:31:17 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: fix controller removal race with scan work
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190725185657.9025-1-sagi@grimberg.me>
 <a5ce0b2d-e4d5-ab79-442c-4c3795fdb0fd@suse.de>
 <93c38a70-3500-b1eb-38c7-41419c8f64c8@grimberg.me>
 <df50ec95-0ca1-58be-1660-101529a72662@suse.de>
 <1bf56b26-a521-8de2-5d52-0c1c9d19fd25@grimberg.me>
 <f4deb57e-ee86-a980-45c5-6d58ee1116cc@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a7a00af3-8818-b036-3154-67a965f7d1c2@grimberg.me>
Date: Mon, 29 Jul 2019 13:31:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f4deb57e-ee86-a980-45c5-6d58ee1116cc@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_133119_167705_C29369D0 
X-CRM114-Status: GOOD (  24.34  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Keith Busch <keith.busch@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>>> Thing is, I had been notified on a regression caused by commit
>>>>> 525aa5a705d86e ("nvme-multipath: split bios with the ns_head..."),
>>>>> which manifests itself by a spurious I/O error during failover.
>>>>
>>>> Hmm, this is interesting. Not sure how this specific commit would
>>>> introduce such an issue.
>>>>
>>> See? Me neither. Sadly they _have_ bisected it, and this really is the
>>> patch introducing the regression.
>>> Current thinking is that we're dropping all paths during reset, causing
>>> ns_head to be deleted, too.
>>
>> That is impossible, the only thing that would drop paths is either
>> if the user is removing a controller, or the ctrl_loss_tmo expired, both
>> are controller removal and not controller reset.
>>
> Well ... the problem seem to be arising if we get an Namespace Changed 
> AEN during reset.
> In that case we'll call nvme_scan_ns_list(), on which the initial 
> identify will fail for all namespaces, and all of them will be 
> disconnected.

Well that sounds like the wrong behavior. If we are not able to scan
the ns list because we are reconnecting, we should not remove the
namespaces.

What exactly fails? and what falls us to removing the namespaces?
is nvme_identify_ns_list() not returning a failure status code?

Something is still not clear to me.

Perhaps we need this protection in place such that we are not removing
a namespace if we failed namepsace revalidation because we lost
connectivity:
--
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index fa31da0762b9..5f6970e7ba73 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3428,7 +3428,8 @@ static void nvme_validate_ns(struct nvme_ctrl 
*ctrl, unsigned nsid)

         ns = nvme_find_get_ns(ctrl, nsid);
         if (ns) {
-               if (ns->disk && revalidate_disk(ns->disk))
+               if (ns->disk && revalidate_disk(ns->disk) &&
+                   ctrl->state != NVME_CTRL_LIVE)
                         nvme_ns_remove(ns);
                 nvme_put_ns(ns);
         } else
--

>>> The ns_head will get recreated immediately
>>> afterwards, so userspace wouldn't even notice that.
>>> But if we have a non-empty requeue list that will be flushed only when
>>> doing the final put on the ns_head structure, causing all I/O to fail.
>>
>> Again, we need to understand what is the exact scenario, because if we
>> are losing all the paths, I/O failure is the expected behavior.
>>
> ... Unless we're disconnecting those paths during controller reset, 
> which actually is expected to happen, and will be corrected after reset 
> completes.

Why is that the correct behavior? Doesn't sound like that to me...
If we don't have a communication channel to the target ns scanning will
fail for sure, we should not remove these namespaces because we don't
have a way to get the answer during this time.

>>> So looking at it that way, it _might_ actually be that your patch helps
>>> for that situation, too, seeing that we can't reliably enumerate
>>> namespaces during reset.
>>
>> Can we define clearly what do you mean when you say "enumerate 
>> namespaces during reset"?
>>
> Any call which walks the list of namespaces, either the controller list 
> or the ns_head siblings list.

If we have a case where the sibling list gets emptied during the
controller reset, this patch will not help because nvme_available_path()
traverses it. I think that something else is the problem in the issues
you are seeing.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
