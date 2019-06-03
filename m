Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB47233B79
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 00:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B4bOgy8tQ6Jm7UtJp7ErgJRcMRP4u9l2jUxAldTkFDQ=; b=NViodYMZJkk0FYCv0Qr2lk6Fi
	m6T0f8sLEoEKYT3lP+vEgl9k3lCAYtpqpP9cl264QDeXcQWpB4O1wwPnsOzVv/7GXXzyNgnQYlPiQ
	rm57uRv4X1q5Rw54SoFaqCO43B14KZ2W93zsQvkd1IAk/hhe82eBufh6/g0wx5GFYvU+IuT40rxuN
	Ym/l77TSKTatGGqZyiI/mRYZiLJoveePUO4k5bYbpjZza+9fQn9+2GE5d8Nxq6v1a06GarftPTTpC
	J7G4DnjQ2fZWB9QUPN39BnYvBfFf6j/GFHLGTVPf8rkgDJflOhNlgo3dKU6rJ+Lq+zbuvkw/BtlyI
	wggmb23wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvae-0007gy-7K; Mon, 03 Jun 2019 22:38:04 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvaa-0007gU-D8
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 22:38:01 +0000
Received: by mail-qt1-f194.google.com with SMTP id d23so11532751qto.2
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 15:38:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vgYCPu5DmfOJ85txy+2vKC5KVMIsDIghw2WbY39K+lc=;
 b=rTJsUIPP3yIS6f3pjGz6RQDo9QpmxOaU9BNggPmklkUA5St/KbVSuYyeAgqRFMfd+3
 HfGDGdezZR3OhFSkU1m41kPg/0GUqlX1sSl332XdKnIn4QbvHl60FhN5VSHJlRbAecMQ
 nvb4jAlujIa1ksHW9UmvrBWfMDY8T/QwbspnNCJCEaWNS+ekRJN2my2AnWU8Bg5WTQEH
 END07I1CDTz2TqC6RTY1GXN/KWmhBG2NBdKQJQCZCnN6/Dha4GOpviUUXStdJkXxhKYt
 SZHRje/I04JL0+Tkg1RvGnHPiOc4Xg31C40773MX6D9/2/ktFhPVhEAwDhlBUO9HRlmT
 7PpQ==
X-Gm-Message-State: APjAAAVGJLvLaee1fNsLJeUUlb5qmRPYYmCXar4eimpHlmiYWqHBnM8d
 cslIZWjP31wLs05NwYZ6TpW2gkrE
X-Google-Smtp-Source: APXvYqyQdGgQc3SX3radfqdhN+pMXjSWBGZ0hRdBuAUjYSl+zp9Auhm3T/SiOB3rZMUdUy2HVkLNjA==
X-Received: by 2002:ad4:5345:: with SMTP id v5mr12105384qvs.103.1559601478718; 
 Mon, 03 Jun 2019 15:37:58 -0700 (PDT)
Received: from [172.29.0.86] ([64.35.102.114])
 by smtp.gmail.com with ESMTPSA id t67sm465384qkf.34.2019.06.03.15.37.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 15:37:57 -0700 (PDT)
Subject: Re: Oops when disconnecting from inaccessible subsystem
To: "Harris, James R" <james.r.harris@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <3332C781-D747-42FC-8B1F-B4748961253C@intel.com>
 <5fdea4d4-4f01-bb84-27ee-b6b51aa8a11c@grimberg.me>
 <53AF2DF5-DE22-45D1-9CB1-A2E92EBBAC13@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ce5cb741-00ae-7780-cdc6-a7eaa4d8c090@grimberg.me>
Date: Mon, 3 Jun 2019 15:37:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <53AF2DF5-DE22-45D1-9CB1-A2E92EBBAC13@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_153800_439846_D0E17A94 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>      > I see a 100% reproducible kernel oops when trying to disconnect from an inaccessible subsystem.  This was tested with 5.2-rc2 + Sagi's "fix queue mapping when queue count is limited" patches.
>      
>      default/read/poll queues? how much queues overall?
> 
> Default number of queues.  No -i, -W or -P options specified to nvme-cli.  No restrictions placed on number of queues for the SPDK target.
> 
> Sorry if the mention of including your patches confused matters.  I only mentioned it to clarify the rc2+ and tainted references in my oops message.  I'm not explicitly leveraging the fixes supplied by your patches to run my tests.

Hey Jim,

Thanks for the info,

Can you try reverting this patch:
87fd125344d6 nvme-rdma: remove redundant reference between ib_device and 
tagset

and retest?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
