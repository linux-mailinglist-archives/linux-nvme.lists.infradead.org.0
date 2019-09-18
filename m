Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BBFB6B38
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Sep 2019 20:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jl4l8ryKBBmTAZMuSmYgVNW7F44+DPbpzu8ifV8UZx0=; b=G949PU4uAqLpAnnUOtISsSIYk
	NiqFZO8q26riPEfSO/YNCddS2rwwUft0K9G5XQSPoBfWqGyJVQrXq7Y3vRDORLtsqBulvX66E/et+
	bVQtdZCRbwINOzUUxVRHqJeIxc6sRrSwoA/O6MDnPt8cG2aFrMfaE6zqfdTle6gFTZgnoxpVHk/Lk
	bpk5eTuX6+oT+VA5plR6rEaznTu05dapYlxJ3Dxn3AlETGk1G8+NfM9Y5o5eKmS3gA6Bv9WJhgh+7
	bDD+EiyPEnHbv0AlUlLuFB9DNfCrLDki6Iq5UyV1B2qhxAbgnhL3j5dUdNJJ0ufuVN+bgRjLJlTgK
	fx9O52fZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAf7q-0006zM-5v; Wed, 18 Sep 2019 18:56:26 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAf7T-0006ly-VR
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 18:56:05 +0000
Received: by mail-ot1-f67.google.com with SMTP id s22so813920otr.6
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 11:56:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wwWJmK1LAxIS5GT9BA/Fv7Z7VJHjo27GrF0Uv3gQTtg=;
 b=pc0MP5gAEKz9dN9F5BfJW3NiTwPBA8ex9txz2b9m+9AzZO6hPpa/z0RVkk5kZIIeCW
 MhRhXikBKCQ9DBrYMa3Albai/fE8NC9OcBVhi8YMIx+QZnm5ekkT8jAvRq0OfGyqdxZC
 8l7zTADGhDyecqnDWzqGugGSGAg1CynCumAqSRz3XcSJrwm5rcO46TdV+ykBF8W94rgA
 VR2Ef0hxQH2EWmExa+QhpOa40hexATs1WtgiAzBdS3FxalczVkHnExWy4qgG0uuhwjbS
 Mh2GDjg/0SdQo8n0g3fbjyQrUpPtCdsK41S2eYaBcda0r5oFPMgzhN7CHewoyHetiCpn
 7Zaw==
X-Gm-Message-State: APjAAAU7HRAFF696IMEkwJzV0lnn0uRc2YuazWS+4nSErHpRM6msEK48
 gemfMIprpByNi+S/WDLIys5j24e4
X-Google-Smtp-Source: APXvYqxrCsHeUdtRQzGOqQLkYJwHl8fQcEJ5a0rNmOTe7G7YhzIazktsLV/Yys3xKxlC2jfqc+XFRw==
X-Received: by 2002:a9d:61d5:: with SMTP id h21mr3416976otk.78.1568832962436; 
 Wed, 18 Sep 2019 11:56:02 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q199sm2013344oic.16.2019.09.18.11.56.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 11:56:01 -0700 (PDT)
Subject: Re: [PATCH] nvme/host/tcp.c: fix use of time_after()
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <B33B37937B7F3D4CB878107E305D4916D339CC@ORSMSX104.amr.corp.intel.com>
 <8881fa6b-0825-4f4d-4713-eee3062f1cea@grimberg.me>
 <B33B37937B7F3D4CB878107E305D4916D35B84@ORSMSX104.amr.corp.intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ebffa130-8bfb-d86a-06d4-b0e9eadc1c90@grimberg.me>
Date: Wed, 18 Sep 2019 11:55:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D35B84@ORSMSX104.amr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_115604_013540_934D6B4B 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Thanks Mark for catching this!
>>> nvme/host/tcp.c: fix use of time_after()
> 
>> title should be:
>> nvme-tcp: fix wrong stop condition in io_work
> Sure, will change when I re-submit as 'v2';  [PATCH v2] nvme-tcp: fix wrong stop condition in io_work, correct?

Yes

> 
>>> From: Mark Wunderlich <mark.wunderlich@intel.com>
> 
>> This should not appear in the patch message, are you using git-send-email?
> Sorry, could not send email directly from server with git tree, so had to just send via my workstation email, copying exported patch contexts into plain text mail message.
> I'll remove that from the patch next time.  Is this process OK then, or will I need to replicate git tree on my workstation to use the git email path?

I can fix that when applying if you have issues with that.

>>> The values provided to time_after() call used to terminate do/while
>>> loop were reversed, causing loop to always exit after single pass.
> 
>> They are not reversed, but rather in the right order, the problem is that the do/while statement needs to continue as long as the time *DID NOT* expire.
> 
>> So the right fix is:
>   >> -	} while (time_after(jiffies, start)); /* quota is exhausted */
>   >> +	} while (!time_after(jiffies, start)); /* quota is exhausted */
> Same result either way, but I think your suggestion reads better.  Will change.
> Personally do not like use of label 'start' to indicate the end of time period, to me would read better if used something like 'quota_end' or 'time_end'.  But not worth changing here?

You can use deadline as Bart suggested.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
