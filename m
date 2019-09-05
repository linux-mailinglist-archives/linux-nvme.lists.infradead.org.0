Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE46AAD41
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6z2M3M3p4aW/DyrEMQaWaik3tYKNl0nPhnn8qAx4pjQ=; b=Tdb7//BoLU7UFq2lmCblKHusJ
	My61g4vfybW1V0KAG+T6dxklZEbSUMYXunoZlzYUVwbcIVeVqrqum873bt2dy6+OgEqy5svk8k6qE
	SxVzf8heE02c99HccWScgG2Y2E5UEJpfFMSI4xMvfOWvqnJf+KygckgujmWHaT4Qm5k2JzJ2OZgMb
	ZRPdG6o+lAiGy0giL0uw0QA0oIzCxvXrol/awOs97RsCV5KtHxdUhoPwB1DN2p20GmGehXlTWjCQs
	r0DSfyCYJUmNELCRFb6gFvM0zW6/2iHUHFfzYfUrFsCRAh/A/q5ShkV+1ThKSTufNxteXr44D/3Cs
	9P6bISAfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yaQ-0000al-92; Thu, 05 Sep 2019 20:42:34 +0000
Received: from mail-wr1-f49.google.com ([209.85.221.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yaJ-0000aB-Mv
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:42:28 +0000
Received: by mail-wr1-f49.google.com with SMTP id g7so4305061wrx.2
 for <linux-nvme@lists.infradead.org>; Thu, 05 Sep 2019 13:42:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RshjTaGhFBNTyHj1L4BXqwdsUmTKiNO23WK8s0QWYCc=;
 b=VK6yshEUEn3sirw9ks4YaET5BHm08I0G/ErI40rbaMeVQ3HJXtY7u7HkG+89jwKMqE
 8bCRwNgjydZFcH8Xi/pYOG1O5rhz+RqvdR5knUWhf2ZSt2yd+odxSQuiqStP79Pzt1+L
 +9NpitLms6hcvp01EAwBIeb+tTe7yz5Mue0m0DRJ2GdLMegGTbEQqaIiHJC+kPYcYMB6
 s6FHh01rYISZ0Tuq/oHA9Cd0FASiiYREYuA8mJivvACcRWz7myRIb/V52XUgTglLUZZP
 ZuOePI9Nqb5NGvOkMWlLP51mlXzKh4198yVKuwliXwEiD/+SeYmgHfRezQHCZuAVamYZ
 MCjg==
X-Gm-Message-State: APjAAAUY2RBLkW4ToiG4ZDPfG0AWpkpWZfz9s1h/Go7fM2kLk4+Mfm3f
 Sqs72ZBg8WOLItD7SKCpd9A=
X-Google-Smtp-Source: APXvYqzExUpghcJjLlHbstk/WLqTW63omVkyQSYrKkwis1Soa3BwAiB4hIfmUwXzRrMXOEkvyfo0KA==
X-Received: by 2002:adf:ef12:: with SMTP id e18mr4169214wro.65.1567716145825; 
 Thu, 05 Sep 2019 13:42:25 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v6sm5095477wma.24.2019.09.05.13.42.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 13:42:25 -0700 (PDT)
Subject: Re: [PATCH 2/5] nvme: Prevent resets during paused states
To: Keith Busch <kbusch@kernel.org>
References: <20190905142607.24897-1-kbusch@kernel.org>
 <20190905142607.24897-2-kbusch@kernel.org>
 <5f36518c-7cf0-9fe1-49d7-2b24b3d229fe@grimberg.me>
 <20190905203546.GB25467@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <67e7eb83-c4e2-ebd8-9c82-c5e038e3ca9f@grimberg.me>
Date: Thu, 5 Sep 2019 13:42:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905203546.GB25467@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_134227_748645_352B4872 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.49 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Also, seems a bit "acrobatic" to set the state to RESETTING without
>> really resetting it (and then change it back to LIVE before you do
>> actually resetting it).
> 
> We can think of a CSTS.PP as the device internally resetting itself to
> activate firmware.

Can the reset flush the fw activation work? I'm trying to understand if
this state games are the best solution here...

>> Would it make sense to look at nvme_ctrl_pp_status when
>> scheduling a reset in nvme_reset_ctrl? Just a thought..
> 
> We have to be able to reset if we decide CSTS.PP is stuck, fw activation
> timeout.

See above.

>>> -			nvme_reset_ctrl(ctrl);
>>> +			if (nvme_change_ctrl_state(ctrl, NVME_CTRL_LIVE))
>>> +				nvme_reset_ctrl(ctrl);
>>
>> How can this state change not succeed? ctrl removal?
> 
> Right, we can't prevent a transition to a deleting state.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
