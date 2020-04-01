Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27B919B764
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 23:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0VxATzuUwVrm8/WhVZaGQ//T9oT5IM07UHycmlhM8f4=; b=LvZRMA8+iyOXqs+BgtzXrvmqS
	2BHwyOxP2KnQnRvl9U9S5sKAw7yDA0EvBaMIpZjR39NL0KxSXJNV9cRv4kZmGG25CXFIcV7IzyDR2
	wNdsYzildCL1ygKXe+5qBgYEf3E1h/Rzbzs8z0nVVveCb2Z2Pv1O9jplWJnizbwjczuxIs31r0M8n
	B+4aMtRmzx6pBiYTppR2pVNWWFOeTAS+fB5U0MKCEACRGqW0MYUBoH/o8gcI2nocypmYjyrwtbo5Z
	h41STVFzWaLAg+qUQh0lIgdPO6qrbhLpb7gjXdVVaxKfkBaTmjudBCqvtvD06hj5Z53xa0NWCWrE3
	PQbss4xnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJkWV-00017P-5i; Wed, 01 Apr 2020 21:03:43 +0000
Received: from mail-pf1-f172.google.com ([209.85.210.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJkWR-000171-1z
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 21:03:40 +0000
Received: by mail-pf1-f172.google.com with SMTP id a13so645992pfa.2
 for <linux-nvme@lists.infradead.org>; Wed, 01 Apr 2020 14:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+v9LO0PwQe6Ft1NLRrSLGyqcFqGPKid4a5ONC0PjlLE=;
 b=AD4hcccNczJ8C08xegIE0PR68GjNpSu1beubabN33my8N+dWVlATgHiUdUvAxiIb4J
 yaIR9lauy5q4u1bd1SM/OkVqsNRwqOMhWWyzvRSUwenxYXJXS6z5YAzVAsdkzKqe1Rxb
 ctwbI7v4AAHYhNLqrzUanJ8NTGOAvNWMhQtPnMKJ04OfFbKuReAJbNZf8sjXnnI8aGKW
 8lJKvKACI/26eiY+eohgxWmLjDlWdIe49Wfe9lupVqfy4emKKUcmldHm1stJzGSYJuxH
 7c1C9eVpwkWe4A/WcGMgFLnKjxLBSATkAmsYc4tB/H+rGDpvlTCKtc6rfKhWVWaMcCZq
 WqtA==
X-Gm-Message-State: ANhLgQ1VNfr41asW4fGC3HGygzlEzFFe5SaeMrlkg/nGzDLHd+xAJ0Yp
 7XoRtgN1cpGWS+pQoeP7LXxwnD1O
X-Google-Smtp-Source: ADFU+vuYURrPoCGUHxLKck4ZhtcY15bvz5H4z2U8KHXKejUS6hjQUzYqcfSr9IARDslrrJmPaTTJfQ==
X-Received: by 2002:aa7:953b:: with SMTP id c27mr25702441pfp.201.1585775017502; 
 Wed, 01 Apr 2020 14:03:37 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:a836:db4c:a7ac:3d7c?
 ([2601:647:4802:9070:a836:db4c:a7ac:3d7c])
 by smtp.gmail.com with ESMTPSA id x27sm2218573pff.200.2020.04.01.14.03.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2020 14:03:36 -0700 (PDT)
Subject: Re: nvmet: Kernel oops during nvmetcli 'make test'
To: tasleson@redhat.com, linux-nvme@lists.infradead.org
References: <bce98bfa-5740-d184-ac47-6ff1c1c97b30@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <72e71b0a-9878-4ce7-3f75-9e9f612ab20b@grimberg.me>
Date: Wed, 1 Apr 2020 14:03:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bce98bfa-5740-d184-ac47-6ff1c1c97b30@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_140339_096255_512B002E 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.172 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.172 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> (gdb) l *(nvmet_referral_release+0x14)
> 0x32e4 is in nvmet_referral_release (drivers/nvme/target/configfs.c:978).
> 
> 973 static void nvmet_referral_release(struct config_item *item)
> 974 {
> 975         struct nvmet_port *parent =
> to_nvmet_port(item->ci_parent->ci_parent);

This looks like a typo, I think we need:
--
@@ -1064,7 +1064,7 @@ static ssize_t nvmet_referral_enable_show(struct 
config_item *item,
  static ssize_t nvmet_referral_enable_store(struct config_item *item,
                 const char *page, size_t count)
  {
-       struct nvmet_port *parent = 
to_nvmet_port(item->ci_parent->ci_parent);
+       struct nvmet_port *parent = to_nvmet_port(item->ci_parent);
         struct nvmet_port *port = to_nvmet_port(item);
         bool enable;
--

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
