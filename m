Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974627E26D
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 20:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l0DhG9z6UveazsyLf406XoPMvwy38vuIqgGxFOv+86c=; b=ERA0TAzsfHrrkWw+hySxpFH6R
	996fKEc9jJZHkGBSQG5ASf75QDOZrcc0yfufwRPerVOqCufxUT3pQJKaudwzxB6clyeOPqQrhUhi2
	NmUh01VfVUwDLZWMRcnpqkQ2ERWzchgshHzC0n+cVuaiV+eWk0+2OMLixjnycPj5ZTRlN8Ng4gYhz
	2OM4QvNOp/rK+JUDA0fCycuEAm48HMSeEPcLQTwueourN/GNOrJOpOpCf+xQsshRvzebVmTX9jv8m
	Tl1pigYtAhXtVOqYy7Tfx7LzzDf2ijyY2sXvJ0iYW2EqJKzQKzs/wBRZbruUHsrR/hSNeLuwV478h
	dw/4JLRMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htG2M-0007vv-Gd; Thu, 01 Aug 2019 18:42:50 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htG2H-0007uz-Pc
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 18:42:46 +0000
Received: by mail-oi1-f194.google.com with SMTP id e189so54639229oib.11
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 11:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9xvrHoC2LlCnjFxttLcN2nGTsIU/0dS4LAtTr8UxnmQ=;
 b=szSM7DmxEShk7vGn8Cd4xAN0zpjzDa6C8nHX2X4FnpsUINMnu26Wfy5afEAG3JRNdy
 8a5NuYiV+3j7EBrZJ4ugHoZRIUX1QFpmQkNQh8Se5XbZg1Fx07e6F+NmrfVBZNQIKQTi
 fYYnvfghcoIPjHTZbTHO8bBxysP1FzwIv7Mv2HpGRqck33BwEeyvCYv5bhAJGuuU4TNe
 G2ZKbs5bfRonfFCTnjP9yzrZC59T6AmYAEZaxRnyJf2Hc88IK+tvOpoRYhAmADRNJYwx
 8jwI63TfhHgKzyYVz3OQyXx4SzyQSMyViao0ESO2rfi0ctJqrvZcnG6o82Fkkx7HwZc1
 qotQ==
X-Gm-Message-State: APjAAAXEREd2c3JSUyNB/i9Ty9hXEv4jJ1NDBdcvpSED02BNSI3UebWp
 DXHnHAaLp/gnYA7jSa7sKcHuGt3T
X-Google-Smtp-Source: APXvYqysQhtq581hGA9uN/ynYnMAqtOr12JBlgF1gbT6AlA55ZgxFvMXs3lQ0J68F1Vap1L/kNWqRg==
X-Received: by 2002:aca:da56:: with SMTP id r83mr149204oig.84.1564684964176;
 Thu, 01 Aug 2019 11:42:44 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 20sm16363436oth.43.2019.08.01.11.42.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 11:42:43 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: do not remove namespaces during reset
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190801071644.66690-1-hare@suse.de>
 <20190801071644.66690-3-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <133a8679-0949-98ea-ed29-51be0fd2ebc3@grimberg.me>
Date: Thu, 1 Aug 2019 11:42:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801071644.66690-3-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_114245_828282_11FC469C 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Whenever the controller is resetting or connecting we cannot make
> any decisions about the attached namespaces, and consequently we
> shouldn't remove them. So skip namespace removal during reset;
> a scan will be triggered anyway after reconnecting which will
> clean up any stale namespaces.

I personally dislike making nvme_ns_remove() to semantically
mean nvme_ns_maybe_remove()..

Is there a fundamental why this check is not performed in the
call-site and is inside nvme_ns_remove()? Are there other
calls that you have seen to be problematic? if so which? and how?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
