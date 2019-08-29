Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331C1A2427
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 20:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vJtM53M5o0LLLWBugSxveGI2IWWWpgNvXNxYSxRAnwU=; b=kKevSU0S8G7h/3LmfY9OmJpAD
	PMR79hlG5vNsqeh5DFHc7EhjwqC2Y3uPmW0vM3KTdARSSjyRDpBN0qm2+/XxClqukS29CIN+Mv/3a
	KYOSb4OQsvvretLNDfUVILBuiPGTuDYDoNssj2GWyVanH0fm9LsAty9PBAR5sGTjppW3zRS/x5Kxm
	rIwbZanvY5hZ1vGbejbD8Ibq/NNQg6VojWHdAajWpErSqdV9kGM8z7jggYJvFcyyDqNkN0WKWKRw8
	uJDTLmajtVP+VO2/RUdsASdaiPNAMJyMiSCdLNOsRSaW9ZsAfLJKbAB0CYakpvXV0O09akn7NyIqW
	0Sz0yVlbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3P2q-00013S-UE; Thu, 29 Aug 2019 18:21:16 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3P2i-00012q-T8
 for linux-nvme@lists.infradead.org; Thu, 29 Aug 2019 18:21:10 +0000
Received: by mail-wm1-f66.google.com with SMTP id p13so4821534wmh.1
 for <linux-nvme@lists.infradead.org>; Thu, 29 Aug 2019 11:21:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9wemDLG+al8uBFQtCufV5oYzqlZQzmNTZtOsaYBmOL4=;
 b=CPyeeMx+bWYkjxUkNvGA2Ui21UYnWLhpPwxwnrKGiS9dLCUxIDhfSMX8nLiIuwsEc7
 Jzzq/NT3qbcLl0YiyzDYH2HHWQuEJjfIME04f4NPI1Pn2LXiD2kZ4495Yb6JS1e30UHP
 Lg/BKdKOenTe4PnwltIxcU7oUDcjbwnQcbFRDduVCpyYHaUDojlNF+BJ2Hp3CQgV+DlH
 jHqqgmk9MhSkxDGU//zZGo0V2o8baPh0zrRqOZPHoZnTwFRWc+oFKX3FJbc5JfbvdUXM
 OLgkf/y29IjHmlaE9fnNMBDjkxK88IF8hCIJALfo4D2C2jLTj52OYF8cYWWKuMT2CpMD
 dbHA==
X-Gm-Message-State: APjAAAUopD9VtUWBZknREo7yUQysu1MF/g2rQ4iQ9/0/Z9gzPdwH/Uva
 /H9eMbaJczZTEvERwl8tpTvGxpsI
X-Google-Smtp-Source: APXvYqxs9hGhMd3GCtvD6OwjDmG0XpiTouttfQ4gQX2eJSe1yrPiPLw9KxNZ1T6jPMpg7kAE1PRLxw==
X-Received: by 2002:a1c:2d4:: with SMTP id 203mr13320824wmc.105.1567102867216; 
 Thu, 29 Aug 2019 11:21:07 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id c187sm5655385wmd.39.2019.08.29.11.21.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 11:21:06 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christoph Hellwig <hch@lst.de>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me> <20190822002328.GP9511@lst.de>
 <205d06ab-fedc-739d-323f-b358aff2cbfe@grimberg.me>
 <e4603511-6dae-e26d-12a9-e9fa727a8d03@grimberg.me>
 <20190826065639.GA11036@lst.de> <20190826075916.GA30396@kroah.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ac168168-fed2-2b57-493e-e88261ead73b@grimberg.me>
Date: Thu, 29 Aug 2019 11:21:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826075916.GA30396@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_112108_937177_928F1CA3 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> You are correct that this information can be derived from sysfs, but the
>>>> main reason why we add these here, is because in udev rule we can't
>>>> just go ahead and start looking these up and parsing these..
>>>>
>>>> We could send the discovery aen with NVME_CTRL_NAME and have
>>>> then have systemd run something like:
>>>>
>>>> nvme connect-all -d nvme0 --sysfs
>>>>
>>>> and have nvme-cli retrieve all this stuff from sysfs?
>>>
>>> Actually that may be a problem.
>>>
>>> There could be a hypothetical case where after the event was fired
>>> and before it was handled, the discovery controller went away and
>>> came back again with a different controller instance, and the old
>>> instance is now a different discovery controller.
>>>
>>> This is why we need this information in the event. And we verify this
>>> information in sysfs in nvme-cli.
>>
>> Well, that must be a usual issue with uevents, right?  Don't we usually
>> have a increasing serial number for that or something?
> 
> Yes we do, userspace should use it to order events.  Does udev not
> handle that properly today?

The problem is not ordering of events, its really about the fact that
the chardev can be removed and reallocated for a different controller
(could be a completely different discovery controller) by the time
that userspace handles the event.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
