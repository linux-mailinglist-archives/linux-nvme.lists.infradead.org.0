Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C38EB2766
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Sep 2019 23:40:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3bPpOL3Dv9Xl609L6Eor4aUgeOwEhZiJDM0p2DWlSzc=; b=cTsjPvKFomI8iGT7Q59ah9OWK
	zircvmxjA9UxWQk7uyeZBXS6j9GA8uGk9aWp8ypWhrbQLs8+AaeEkORAbFcvFw88wkTkm+vAMi1j7
	Z7D61C63aVEICgXdXMd9Gq1UQy0wriT1CA8RQsQ64hpuPannGn7wxWlCo4fcxiaI3XyJQW1hfo7pq
	6GV3RTagg5K+GFrIjEGnKYPpQ43t1zdAqLbLeLvOyOW8HRzz0h98hojycwsHFg02v2gxVL13CQstw
	ZOsj74vMc62yAMpau7Bd9WwllRee2EjbbUymYMwxRd5OOBsXNgCanI5RvMdGiZh6B47sd0DZryOHr
	vqN1zDNqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8tIw-000294-Si; Fri, 13 Sep 2019 21:40:35 +0000
Received: from mail-pg1-f176.google.com ([209.85.215.176])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8tIp-00028F-9e
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 21:40:28 +0000
Received: by mail-pg1-f176.google.com with SMTP id d10so15927346pgo.5
 for <linux-nvme@lists.infradead.org>; Fri, 13 Sep 2019 14:40:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=N1FOuUPbttawvFilBNuCCBapYdLK6ZVx4QZTAmQ+Xao=;
 b=IcYU21YGK9aZlzTM5CPFP0A+vEpgU71299RHp4YlvG7/PZnJjvnh3KqzOJ1prp19ui
 GnEDIIqyK4Sppfzlc+5Q9cObyf6Yz29QZMhTsLcV6tJuABVqsv3z0XDd23wfgZOmviYg
 7BEmQRIlUfxb7q5am81iWQQmzdRDzfS5zqb8lRC+HB727vhQNFfFN82+H/S0CKE/C0y5
 yzubhEP2a600HcxRKb+xDAgSsb9JtUg1H67O8rC0Rt/m0Odcw+V72eqAYnHTouhvGXO3
 fZbu9+tju8u7ugCZdz9vod+enKzvxDUKOMp7Ngkh1Nc57wa+0bm3GyeCtnIWXkJhy9wN
 EZjQ==
X-Gm-Message-State: APjAAAUkmUPQk5kFJF+RUOxg0F7Eh5T4Ljck1czPQhfuZAmCT3lwOrdj
 WrelXzhobL8si5mGIi3RM94=
X-Google-Smtp-Source: APXvYqzojmrw1+rCW6yQOUI/V4+OWCmmmOD91rFEjyMQGc+wRQSA89zIqTqI/rBoJKKm2T/HsIVjHQ==
X-Received: by 2002:a17:90a:170e:: with SMTP id
 z14mr7614422pjd.119.1568410824663; 
 Fri, 13 Sep 2019 14:40:24 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id i7sm15215314pfd.126.2019.09.13.14.40.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Sep 2019 14:40:23 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme/host/pci: Fix a race in controller removal
To: "Singh, Balbir" <sblbir@amazon.com>, "kbusch@kernel.org"
 <kbusch@kernel.org>, "sblbir@amzn.com" <sblbir@amzn.com>
References: <20190913024432.7705-1-sblbir@amzn.com>
 <20190913150132.GB17139@keith-busch>
 <3cf02675ea58f3e3b91f23f63e53f1d2010fadf9.camel@amazon.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <ad85a4ac-7b88-a855-abe2-6fab85c703a8@acm.org>
Date: Fri, 13 Sep 2019 14:40:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3cf02675ea58f3e3b91f23f63e53f1d2010fadf9.camel@amazon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_144027_338160_B44ACDE1 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.176 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.176 listed in wl.mailspike.net]
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
Cc: "axboe@fb.com" <axboe@fb.com>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/13/19 1:58 PM, Singh, Balbir wrote:
> The real issue is that by then udevd has already called into blk_queue_enter()
> and is waiting on wait_event(q->mq_freeze_wq,...), so we do need to unfreeze
> and wake_all waiting on the event.

I don't think that's correct. blk_set_queue_dying() wakes up 
blk_queue_enter() and causes it to return -ENODEV.

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
