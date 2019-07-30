Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFDA79DBB
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 03:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eELBD7CELvMtnuJ1YcvTmFoVBvdMoqf32Ogm8o6RsUI=; b=jMlh1F5ElQBCb75R/QPJSgRf9
	KVBuOB9H94bKfz4z6jA7I6La8sH5RhPA/4NT33hQ0XZ+DYfjyt3PHS+QVEK3GaJ8IvOcNRIP5Nygq
	pwfe2JtyFrwKqZMsVeu8vYJV4fFUznuqaBGsREv/0qd+8gc4tao5Dz4zIU6Uv0DO8B6L1UtdaD7LP
	kS5N8w92LD0rt5qxRTxNCP2Lxhqh+Bw4w1uEwFsbTt5hdUe4V5kcnuN7rauO/NqAbrwFjOX9vL9ge
	ne12XNFx593qXkeKPS54CpNbThsya1H1lLs5QGHx60ZN1TgSQwW1Kl0ov9lxCARY/Kdn/3cvo8MAM
	r0AiEAn8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGZn-0000GB-20; Tue, 30 Jul 2019 01:05:15 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGZg-0008Lr-28
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 01:05:09 +0000
Received: by mail-wr1-f66.google.com with SMTP id r1so63799521wrl.7
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 18:05:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pRMV3zxMd5dP4Ih7JZBg/SMIHEgcyNagAWIiifb5jLw=;
 b=DLt6MPLwEY/tMpoViTkcN9Rx+9e/oug53CN1fNBKuqlYFEhgnKJFDt7EEwGNM0ETHh
 pyhBK49V40WYweGn3VTAlaijNqcn9aqVf538Pn8w9fXdG8Rpfl0JR5taDhnSTRRMgcmQ
 ifefh2F83x4auoiaqf7ohlY+4Hl7ExI4hHXGCtmuWLCCYqWvpEWurDC08rXF4mv2kWfU
 lKpYqPugK2PqRq5b7ZDhGCYYUAYZFu4aJ+mhVtUHhm1teBt3d0MvE3VxSyOaJNrLgTIz
 PYQvebZBFmdB0Lekkijkh7eJMNaolAbFdazGrmDhuWFhwlcJjoO4uax3KQ3WXpOclQyU
 HI2g==
X-Gm-Message-State: APjAAAUuDB1VkqFsOsPyDx185vlD6vvVb7T9NsKbqqp/teq9FplUD+Qp
 2agJP8HKcHoukTpCMkAAdmwD+UP6
X-Google-Smtp-Source: APXvYqx0hK1u3JwPfE21DbnMWcGAsUyuU8M/ANM9bkKdbpzstrfogs6zBS8pGYlLbriRSoXlxwdmww==
X-Received: by 2002:adf:ed41:: with SMTP id u1mr117290341wro.162.1564448705989; 
 Mon, 29 Jul 2019 18:05:05 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id x83sm69482089wmb.42.2019.07.29.18.05.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 18:05:05 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Keith Busch <keith.busch@gmail.com>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CAOSXXT6kG36vCf7wj8aJG+9fARYP9y+SB8TogfKuc+g20S_TYg@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <03c489af-1ac7-047f-b4ca-f3b8749b72ea@grimberg.me>
Date: Mon, 29 Jul 2019 18:04:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOSXXT6kG36vCf7wj8aJG+9fARYP9y+SB8TogfKuc+g20S_TYg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_180508_129552_B30376D8 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index fa31da0762b9..5f6970e7ba73 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -3428,7 +3428,8 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>>
>>          ns = nvme_find_get_ns(ctrl, nsid);
>>          if (ns) {
>> -               if (ns->disk && revalidate_disk(ns->disk))
>> +               if (ns->disk && revalidate_disk(ns->disk) &&
>> +                   ctrl->state != NVME_CTRL_LIVE)
>>                          nvme_ns_remove(ns);
> 
> That should be '== NVME_CTRL_LIVE', right? You don't want to remove it
> for the resetting state, and the removing states take care of removal
> directly.

rrr... you're right...

> On the RESETTING state, shouldn't we avoid calling revalidate_disk()
> in the first place? An intermittent failure during reset could cause
> the disk to temporarily go to a zero-capacity, which may cause some
> filesystem issues that we could avoid if we know we're about to rescan
> this namespace.

Yea, this should do the trick I guess:
--
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index fa31da0762b9..d01976c93160 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3428,7 +3428,8 @@ static void nvme_validate_ns(struct nvme_ctrl 
*ctrl, unsigned nsid)

         ns = nvme_find_get_ns(ctrl, nsid);
         if (ns) {
-               if (ns->disk && revalidate_disk(ns->disk))
+               if (ns->disk && ctrl->state == NVME_CTRL_LIVE &&
+                   revalidate_disk(ns->disk)
                         nvme_ns_remove(ns);
                 nvme_put_ns(ns);
         } else
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
