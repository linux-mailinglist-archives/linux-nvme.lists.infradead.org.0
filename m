Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C9F29272
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 10:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MQdWy2ItVG1hD1TF1LwEkHzstC8rwC4DzdXGT9L7TVo=; b=dDgurlU/C9MfU8Wqzca4m0SI8
	sEpFg0SHjWI96Qz273PHk3vLPXagkDksBNeTF7MsDNmNVdKVRyubfY6c8lkda3ZSjNzBzVk2lOi0j
	iEFw0NbxLVWJtO5YRqVJiQ2qp5P2JArIaxCh1zU4ujwswFuC8Jjs7Ur/SJ1Zava+XW0FruVuXggp5
	9WKKimkp8UB2D6q3gkk82nyG3d1xyTDe+2e8Y6OEJ6DnWadALFFxXkmFgMC4FyjhWAv07F7kflPm7
	k/v7jseBcXpDpxjRidydfJMsNCp+7cyL7N4CcB7GqHn6Kyt8uVdw7yitPlXNrjHxqva4lVscfJZ53
	Hrq7PEmYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5Fe-0006CR-0M; Fri, 24 May 2019 08:08:30 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5FY-0006Bz-Rc
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 08:08:26 +0000
Received: by mail-pl1-f196.google.com with SMTP id w7so3856198plz.1
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 01:08:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kL8iq9zKGhB3KN7BfpoPudteBzVeqrES22Te1vIC3dk=;
 b=cRn0T0JNjDDLmMcpANDzLMyt65L69I86RvpPwzxXlXYFMqKIBsh4W2PYc/8TQi4Y2D
 wCtx2FWrAnHA7F7iqYZQZSitmNFJjIgkub0OjR2kMCLLENJ85R1M0EAxla41Yr3rm70C
 2SDtzRZuu9NWQVuvGomqf4ddFKjrp0tkuPPXIBT3waUJ1/W5t0QxQxeO1f4WkTip1/Ab
 X8eRde3O2Ze7+JYy9x/2Yum+am5SjJo2osPb780rumHzz68ac+bX3SqxwYb2781baoW3
 7OysllgoclOodp/3w/OlCLeSJmUzY1IqlXYh3ma7RdoEtzN446CbxxvpEnDb7P6W4pAp
 nogg==
X-Gm-Message-State: APjAAAWFlV//t8QtXTuCaqoPTUke6tKOL28LknUzJwQrgsJSve4gV9G0
 Z1pkumQMoIRD1SuwcELgx1A=
X-Google-Smtp-Source: APXvYqwcwIwjLOiHZhiAfSXFRbkPJYzxRoEgI0PE3t0kgzVpo2zsf2WTeSSWuNuTqa8YQmKejF+HUA==
X-Received: by 2002:a17:902:e48d:: with SMTP id
 cj13mr104822037plb.156.1558685302484; 
 Fri, 24 May 2019 01:08:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id x23sm1638620pfn.160.2019.05.24.01.08.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:08:21 -0700 (PDT)
Subject: Re: [PATCH RFC 0/4] nvmet: add support for port based io priority
To: Christoph Hellwig <hch@infradead.org>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
 <20190517094545.GA26412@infradead.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8e9ff434-f682-a2be-bc10-a906f793cc24@grimberg.me>
Date: Fri, 24 May 2019 01:08:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517094545.GA26412@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_010824_921908_60F1E4D1 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, jthumshirn@suse.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Any feedback is welcome, I'd like to understand if this approach is desirable,
>> if not then what is the right way to use the io priorities on that target side
>> so that NVMeOF target can take advantage of the scheduler infrastructure ?
> 
> I don't really see the point.  Why would we treat I/O differently
> depending on which port it came into?

Agree this seems somewhat sketchy...

I don't understand what is the usage model at all.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
