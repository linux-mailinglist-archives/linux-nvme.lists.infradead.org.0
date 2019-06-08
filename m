Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9903A1D4
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 22:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3LbiYAZ/wXq1k1BgvoekPfTZh2L/UOQPIAJC/7/iL8=; b=fTxgwSwJsmFPN9
	8SugqJCdCg7pR8IkQtMbBj2ywEn/G56AiUTWRqEhaGUTDRT04L17JxQFBOxyg/pdjuBKqieHFo/eM
	+UkGJJHIbQLIgGCo7YwPXOcPkZC7YKSAozqN0kM7OBOvAp2YxsLf7riKi5LBSlFHImZAdHEoN/D1H
	mqIlyWSGQzrbseai+2MjBNuZ0EfPhnVbdORS2eAQCNU+BAH4MEfivM/NypdyQ3wuAb+jNZnOaPHZy
	101GQfc845NyvsTWDvkBKGGLUMAHkKkE41xZ23lyUJXB/L6yDwBX+K/dtGyJDVtweYkih6qbKDhyg
	WsqcY3T60MnE2niaW3bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhX4-0004kW-5N; Sat, 08 Jun 2019 20:01:42 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhWe-0004bb-Pj
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 20:01:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id u17so3033282pfn.7
 for <linux-nvme@lists.infradead.org>; Sat, 08 Jun 2019 13:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6M10PFdch5Yq+6DiYyo39S5dbahLNZU1pK1YVrXr4KY=;
 b=VNVe4RV6xJ2lkCd+C/4SC+ZyiAs9sOPkGwf/wwbRNx3ahudNo0B+6F/2xz3Z8H3LEv
 w+ymzbh5+ExruO7Cee6uqzwjmyCvEii2ci7aCtrFwXv0oONc0gjjedukFw9yQI/Ty1Sf
 +/AGDEXe4oP3nn4X1R4Vj3DzLHESzyvDNCWftwWnGCFaqvhZGQ41mHmwicFzv49HUEMv
 Gn2Ayx6eYUwexx3vqbqWs0gpxqxVcieSGY6aSYftXirxk7jLZl1VdY4e3bDjzbw8vY+A
 lk+posXCqD1J7DCVHKUP4VVivu97HeJ5o+/EccPVuFNtXUN3IWNrxaHEJX1s88fjHnfJ
 uaUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6M10PFdch5Yq+6DiYyo39S5dbahLNZU1pK1YVrXr4KY=;
 b=cg7pefCA6ju/p8sZPNudb2naAPAKU6FVKlRvTSN95lAdS5HNBu01j1nXLi+BtJbf1t
 0NWISz8bCZQ9OV/kpThBPnVL84KA9Jpq5twbD6gV3GUrCvcJMof2ah5lQn8hrWULQJMh
 fGrpP8OcrLXveyVknXfC79im7zP1qhSo1otrXqndjoy7wmReoAiZ387ERt7ky5B+wOYR
 4SAheZkfkcJ3y7lxgRPEXGgUw5hUyaF66zBCXyjafbQ/as+Shjkv8x8oMLNkKbd3eLhX
 hXiuF+iFnSPjh7PxOpMf8VeJJy8t+obIio5gal6Q5iS9/UAp/GlKtPK/PY8NM/OfNbWZ
 YVrA==
X-Gm-Message-State: APjAAAUF5TasbCOq7XCzTnBWyuIJ/cMsHWB/bDpy7+zeyUMxw7KwaJCC
 ij2JNlQwWoV6L5SVuqZ7z25NI7YEh8c=
X-Google-Smtp-Source: APXvYqzi1t2BIs91Is4sZLQZo66plCy+A67X+cMRqLfKt3APJFvm69WorWu5FLz2P44yMpZwlxancA==
X-Received: by 2002:a17:90a:b903:: with SMTP id
 p3mr12403366pjr.79.1560024076085; 
 Sat, 08 Jun 2019 13:01:16 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c133sm7473700pfb.111.2019.06.08.13.01.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 13:01:15 -0700 (PDT)
Date: Sun, 9 Jun 2019 05:01:12 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
Message-ID: <20190608200112.GC28228@minwoo-900X5N>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12 (ee9983f0) (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_130116_886994_13143538 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-08 19:36:42, Chaitanya Kulkarni wrote:
> > @@ -874,9 +877,11 @@ static int do_discover(char *argstr, bool connect)
> >   	case DISC_GET_NUMRECS:
> >   		fprintf(stderr,
> >   			"Get number of discovery log entries failed.\n");
> > +		ret = status;
> >   		break;
> >   	case DISC_GET_LOG:
> >   		fprintf(stderr, "Get discovery log entries failed.\n");
> > +		ret = status;
> >   		break;
> >   	case DISC_NO_LOG:
> >   		fprintf(stdout, "No discovery log entries to fetch.\n");
> > @@ -885,6 +890,7 @@ static int do_discover(char *argstr, bool connect)
> >   	case DISC_NOT_EQUAL:
> >   		fprintf(stderr,
> >   		"Numrec values of last two get discovery log page not equal\n");
> > +		ret = DISC_OK;
> Can you please explain above assignment ?

Even it fails due to a mismatch between numrec in the header and the
actual nr_entries, the discovery log-page has been done successfully
whose status code should be in zero.

That code is just returning 0 to the caller which does not need to fail
due to this reason.  You may ask me why I didn't do like:
	ret = 0;

That is just following the code right above which is a case for
DISC_NO_LOG.

What do you think about it ?

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
