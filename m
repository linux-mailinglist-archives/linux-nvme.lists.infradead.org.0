Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1138D86DEA
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uf7oqcDDd8XGbvZbGFwgOqkCkK8VMIpBtgK/00NwJm4=; b=e0u5VgheGwPxFGmY9vZgVtCVn
	5i16ylOmWCtFLZFDJkCdze+0vEfLDAwA0HnVQFnmjRwfovOtTg+e8XJ3BisT5vJLVOirlV3a6ytuL
	a0D2BFy1G3MTYRl0w7B/zeYsjoAz7zXGbBrMo5esagRZJaqjX+zhkREHLcjUxNNGFCp1iIi4HxBJg
	0sybVC/xs5Q20R7tJMZUDnqjZ88qI8N+yYDchMGseTwpyHWwdePAzqLGL/A3Ticm4AJHo7p5rdVaf
	LbTg8lPso/yvIPr2ByU9w0i8MPxBr0Ti9XYWV4GtsDqex3MmNmv5SYv91FUIiCLfeb1cDkJaGYtI2
	PbUWo+Sdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrv4-0003qO-D4; Thu, 08 Aug 2019 23:34:06 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvruz-0003q5-PD
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 23:34:02 +0000
Received: by mail-ot1-f68.google.com with SMTP id j19so49011874otq.2
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:34:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3UE3LqD7JfJnd4Np0dpDIg7OiXpKv56OyDgpb/bcANU=;
 b=noODJkHAzeEy7bVJ+rf0ekOsBb82xnU9ma5CUjZf0c1JkDptLFcTET/ygx7ufIOWrz
 zMgfO/61C/M7l5mqsaqSIitPRdz0/r4Vr7I1XWmIJZrhL9ZxuXvhIpCdln5tf2SX5nIA
 3yn2gLrfrtcFZwzHAd9VGDCIqqHnZro8yk8w6f4Asq1wJZolUXGbPRbxsCpazVjBBuoU
 z3Fue3tdnWFWbuUrkUTcE0OlU+8AJVxfdItkrF3WUpI3LKS6suITCGSxlVASWV4gZ9/V
 tjcntpbjVBKhr7UfCErkAvo66LD3DJKaNjIKhkXJUL0i5anbyDaZEJZptIUF1pMjObAB
 YKWw==
X-Gm-Message-State: APjAAAXl8C98ScEJAU7+TtCoPTSrULWjIner99drsQwRqwNs/ex8g55S
 Wj22u8K37yJA8gKa3MWnk4k=
X-Google-Smtp-Source: APXvYqyBSBiUL9zDmDtjlwUAA0nEsiDFLjHNHjvytNFNudkWACpBo3HPfZYCr78HbqsbYlQDYO5lQw==
X-Received: by 2002:aca:4d88:: with SMTP id a130mr4422869oib.167.1565307241096; 
 Thu, 08 Aug 2019 16:34:01 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id q5sm31611807oih.2.2019.08.08.16.33.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 16:34:00 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] nvme controller reset and namespace scan work race
 conditions
To: Bart Van Assche <bvanassche@acm.org>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <779b707b-5892-bf23-52d8-5c8affe524b6@acm.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <32b4c64f-4565-5a1c-269e-9a9059570e99@grimberg.me>
Date: Thu, 8 Aug 2019 16:33:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <779b707b-5892-bf23-52d8-5c8affe524b6@acm.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_163401_821935_0F01F13C 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> for j in `seq 50`; do for i in `seq 50`; do nvme reset /dev/nvme0; 
>> done ; nvme disconnect-all; nvme connect-all; done
> 
> Has anyone already volunteered to convert this into a patch for the 
> blktests project?

I'll see if it can reliably reproduce it for loop. Or perhaps I can
run this with tcp on 127.0.0.1?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
