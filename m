Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0483019000C
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 22:11:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CApA4+NSpN9oJcXojOdUlVmA0Wg78NaX8EsMy4CtQU0=; b=WT/EbxrHFv7IUz16uT6ckWyYV
	Zux/AXjmV84I8fgKMwZ4hLA+dwyyqEzSqZDQuPQKLG0JQy2hpdxDeUdouZ/wI+COURhk4OjLmT8NN
	43IPBdqNEIjQ/2dp21gvxmCMxI8klItZbK1NV2p3RsYZoBLrpEROzJ+v0LHWmKpdzqWR8MOO8fqVb
	12TARu0ee7zaCkpKtc5dOe2SRDUIwipdv4hrcC45g6kyYAbVwvhPJxwViIdZz6fccHUk4M7A81lzS
	Qq1b+iR8ctxBHNt8hqSEgpVQ9I2n8KhZ8QupoaSXBLsPQnfiEnCruRIiNy1Psn29wAr2ZGYEy+3nS
	rCBq2ZVjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGUMN-0004zk-C5; Mon, 23 Mar 2020 21:11:47 +0000
Received: from mail-wr1-f45.google.com ([209.85.221.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGUMJ-0004zO-2h
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 21:11:44 +0000
Received: by mail-wr1-f45.google.com with SMTP id m17so9966683wrw.11
 for <linux-nvme@lists.infradead.org>; Mon, 23 Mar 2020 14:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pgpwUTCVMpUgD5k0Ya5Z8srAWUYyXa+a9Uquoa3RMfY=;
 b=YgVAXDERgyfmJnKKzP5q5L8Jlz1gbTpPsljFyjUWTI1TJSK9JS0NlR7LRkbPtTgMQs
 wRFFfunNUwUfDXJvWHR9Qd5SSnOzBKjXLAoploBwJARKcBjdJCbkmt9t/vNTwbZbgM2Y
 oku1hzywxxSEmi6iCFZc5F1TqSAmS4DTHjeicrq/gzWCwD2H+HDtYGe0TUHQm/MxBB2a
 gDv+ThAL6MYxL7e502X0xNxGkzdEl/BA1/id4wPPrxs+gqgd0mFZtObOxmqEXkW8+ZbR
 wlciexRgdbK5X0ibVOdC1IcY+q+EEUZBcKdyDr8/jcIvHfgYITP/giC1PZplgnoMUutU
 minw==
X-Gm-Message-State: ANhLgQ1dJuNu9SCfEiv5CrfmaE5GFKiKyFep/Mubux+OSIKTTnCSQir7
 RwM4ZlCApPCd8W9lpzbD0PE=
X-Google-Smtp-Source: ADFU+vuexcB4f5bkIyp0KTeTkywKGrytsUQT1XXj7ZYOYhYd0h0t9bCiwh0zkWjYHNNeCXz+BSdHBA==
X-Received: by 2002:a5d:6992:: with SMTP id g18mr32770414wru.426.1584997901277; 
 Mon, 23 Mar 2020 14:11:41 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:45a4:15de:f2dc:1149?
 ([2601:647:4802:9070:45a4:15de:f2dc:1149])
 by smtp.gmail.com with ESMTPSA id f1sm15895306wrv.37.2020.03.23.14.11.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 14:11:40 -0700 (PDT)
Subject: Re: Sighting: Kernel fault with large write (512k) and io_uring
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <MW3PR11MB4684AEE8587BFCC0A9F41DE4E5F70@MW3PR11MB4684.namprd11.prod.outlook.com>
 <4eaa3e21-833d-f6ec-3b14-58dd2022a381@grimberg.me>
 <MW3PR11MB4684AC746EE60B9E5D0D46E1E5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <82255be7-fb89-c66c-442e-6fe04239768c@grimberg.me>
Date: Mon, 23 Mar 2020 14:11:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <MW3PR11MB4684AC746EE60B9E5D0D46E1E5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_141143_119568_CCB285F6 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.45 listed in wl.mailspike.net]
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
Cc: Jens Axboe <axboe@kernel.dk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Can you run:
>> gdb drivers/nvme/host/nvme-tcp.ko
>> ...
>> $ l *(nvme_tcp_try_recv+0x59)
> 
> (gdb) L *(nvme_tcp_try_recv+0x59)
> 0xffffffffc03d04d9 is in nvme_tcp_try_recv (drivers/nvme/host/tcp.c:1046).
> 1041
> 1042            rd_desc.arg.data = queue;
> 1043            rd_desc.count = 1;
> 1044            lock_sock(sk);
> 1045            queue->nr_cqe = 0;
> 1046            consumed = sock->ops->read_sock(sk, &rd_desc, nvme_tcp_recv_skb);
> 1047            release_sock(sk);
> 1048            return consumed;
> 1049    }
> 1050
> Reproduced this fault on branch nvme-5.6-rc6.

Thanks, this makes sense. I'm assuming you don't see an issue with
the non-polling I/O correct?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
