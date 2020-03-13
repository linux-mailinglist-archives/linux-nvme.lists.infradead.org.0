Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17B7183D04
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Mar 2020 00:05:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PF2kZq6GqKclzflieGHri/xof7yo3F+HgWGyyJ9RIAQ=; b=aEXOYWXD7FNpkdmHrFmzDG64e
	PuYAHIABW8TxRdAd13KEV51j5Hp5jjkUJoTtAY4vnlzjT5195ljkdSdcIQqcLg7yMSbC8/2ZtTPk4
	G2uiMU9VejDQOGFvEzJnCXzPhbTMxUL6rAyyzknmqaSo6ugVDxxC1p6hEgtmiTg+q5BlBTFBcA70C
	164zCaM91kEM+DD8gvn1Lv626GEiUYYiHRscCaDeDF56TaBoWR+vq9qT9UHQDHjcX4L+3igZs1qMW
	kQiX8xSAhupy3enVKg2Pq8seXhlWuqDFuMwRwH+snBohzLNcA9xeJnexlb0InMXEAVxVO5ukCU6jt
	+UG8eQegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWtI-0003PD-6N; Thu, 12 Mar 2020 23:05:24 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWtC-0003Or-TR
 for linux-nvme@lists.infradead.org; Thu, 12 Mar 2020 23:05:20 +0000
Received: by mail-ot1-f66.google.com with SMTP id s15so8142791otq.8
 for <linux-nvme@lists.infradead.org>; Thu, 12 Mar 2020 16:05:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nSxS8LX9MOW/A/TfZjRR8Nxv6krTxQB/MSVVluB+cto=;
 b=dbWsKJlaYyaFBSYI7P1iMwQL386soaT6mXEwoDWo6yTs5Ef3wYWIzsFRBFW1mMIiYc
 B5gscoAmZZpp43M7ix+882GjsIYAjnbI5bDyRsEerj3DKCKTZX/i4pJ/kKKsqvzLPU8k
 QPyLlOt/sy8opHjV7g4emCHoihsFnai7woDK0ygCPOhSpBKmjDaupA28xc3zfgZXecVi
 rh+kGo24WBq6G6uvYrklgHp0oFgjjR/oixixWbCYEapX+CQhvxKlZyDWmtsw+U7dG1Sp
 c330vOoN3yvHR+pvrzoSZm/rfhziW1rNrmjWMrh6b3HAMcHkAiHQOA2upsbxJqPxw8rb
 DdZQ==
X-Gm-Message-State: ANhLgQ3t6Vcki7HvxM6BeJrZ7+UNcgq1RrPh68NvAiVF3SAyMSnizYoX
 admg9MtA8XFKYasrHwtQ30w=
X-Google-Smtp-Source: ADFU+vssHafRNIq1meAJlNYNceW8OhvndwuWBfV1gQZT4S6Q87jDrtKjdpgsKZ6f3JgCQ/a90+/0jg==
X-Received: by 2002:a9d:3f8:: with SMTP id f111mr8795225otf.204.1584054317566; 
 Thu, 12 Mar 2020 16:05:17 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:c47a:8519:9343:83b8?
 ([2600:1700:65a0:78e0:c47a:8519:9343:83b8])
 by smtp.gmail.com with ESMTPSA id w5sm9667108otj.39.2020.03.12.16.05.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 16:05:16 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvmet-tcp: optimize tcp stack TX when data digest is
 used
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20200312062603.2572-1-sagi@grimberg.me>
 <20200312062603.2572-2-sagi@grimberg.me>
 <CY4PR11MB13516CE3B702DC7EF4B25D7CE5FD0@CY4PR11MB1351.namprd11.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <181b1f41-8831-0015-5622-8fd23e74d872@grimberg.me>
Date: Thu, 12 Mar 2020 16:05:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB13516CE3B702DC7EF4B25D7CE5FD0@CY4PR11MB1351.namprd11.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_160518_950673_EF9ED437 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> +	if (!last_in_batch && cmd->queue->send_list_len)
>> +		flags |= MSG_MORE;
> 
> Should this actually be:  msg.msg_flags |= MSG_MORE;

You're right, this was left uncommited in my branch...

Will send a v2, thanks

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
