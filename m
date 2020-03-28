Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CDB196672
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Mar 2020 14:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN6yfzO9Im/CWWQZklUB6DnaeDdUhqF6fvHridzu9xg=; b=szagms7uSKNZNp
	vuiX2Y6Q2EbcEvCVOwmWpP+Z+i0TpnMEKZb2ec1xjS18VcW9oahIJTHNy0dsRCYDZJLiUjJ/jhLV9
	Ff+r9TQTvm+rqa/7ZU6NcC3EHgFxB/vzqQDU0Uiks6o9PKdBD/YpyljG5B/kTvMuEeq8ZRqyBC0qa
	zhl4K+VWqox6MRwRv59KTSny9+2DXO/0Gxi4KZAJU2CYUTwowJ9NoTp9kLdGo8AiURt+KkqKyBSyH
	Yq18EsbroxAedR2jvwv45fioKDUulloJdV9P4TeSCmNgyiuXJ01JBLwu8Oiwb5of8zzDYQw++i6ei
	Tn3r7k4PkIdvOhWOJPfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIBwy-0008Jm-4q; Sat, 28 Mar 2020 13:56:36 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIBws-0008Ih-Ih
 for linux-nvme@lists.infradead.org; Sat, 28 Mar 2020 13:56:32 +0000
Received: by mail-yb1-xb44.google.com with SMTP id l84so6257998ybb.1
 for <linux-nvme@lists.infradead.org>; Sat, 28 Mar 2020 06:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=draconx-ca.20150623.gappssmtp.com; s=20150623;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=ONdMAPyiB0FQN9RfNXQDWPw1B2SNFTDlbdPq+oteUP0=;
 b=VC1e5z6odylqRXJ01LB/715zOmiuRw6n94RE+SFPg+ccDnVRWqdVq+IU3uxFNtOl69
 uQmXJrW85p/GN7cX3/y/9sEdlMFPGgdJAZY/A8cUINEopka2hUcQSRHHFqpVdITaPKH4
 0Gag/Fm3S7BYiMXl4z8awVZx2ohJB8jyaILnuLZy3rbncNhc/Z1U9yIfqWg18SmOecrT
 NEB8KlC60vhC7cokGw6TtDlXR1nTJKHYUzk0poxHkP8fhfqhiJFMefgY04eqoiRiwSkq
 CuvI5skXFIfWW86MsVmtOXkNcFYU/trSirOjFy+kyPhn78YDhTG4igc87sVuiZ2GT5eZ
 FSug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=ONdMAPyiB0FQN9RfNXQDWPw1B2SNFTDlbdPq+oteUP0=;
 b=KB2vzaKacsArW+1EM4Pq4HVHhFoHEwYsiORHqcQ7x6PCtGEbAhrDUBhELhc9nJYdqL
 dXHrSWtpxuL8KKijWVADN1gxSTi0wUxkQ1wBuLluhGgM+QnJSk63unqcob11sP8Khbjc
 d3whXAqYJMRkr5WNDMq2dKBF3JpaAkQySqlcEt7b66BRFDgn40rBRJLNAGUIyGCsEdhT
 GwkipsO7j1eigrp5zN8HSv5NkmDCTuEiC9mp+tp3O+lB99kWkj/+psR4Redn9l5Br1CZ
 61NjnH79Fh/gkZtwh9dEn/vFR9QyaHNsCNnO7ksevcGqP75THjnI9m+0eJohyf8nlOmD
 iRaw==
X-Gm-Message-State: ANhLgQ2fDjHIeomKbYkSi1jPL9I+hU7KuvQ5Aq6Ek6MyOVbaWo3Bxd1t
 6H2WvYCuvIQFrkWXFkKNTCO0ssTw+RloT/Hf3rAJ/g==
X-Google-Smtp-Source: ADFU+vuRXCOQPyauFIJmv2m9SNnbV6hifB8BojlvTqloHfynOqJyE74a8eLVpc3XwnUnkij3d0BA0Bc1VMQYMk40TKM=
X-Received: by 2002:a25:3701:: with SMTP id e1mr6170514yba.196.1585403788766; 
 Sat, 28 Mar 2020 06:56:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:1941:0:0:0:0:0 with HTTP; Sat, 28 Mar 2020 06:56:28
 -0700 (PDT)
X-Originating-IP: [24.53.240.163]
In-Reply-To: <20200328082601.GA7658@infradead.org>
References: <20200328050909.30639-1-nbowler@draconx.ca>
 <20200328050909.30639-2-nbowler@draconx.ca>
 <20200328082601.GA7658@infradead.org>
From: Nick Bowler <nbowler@draconx.ca>
Date: Sat, 28 Mar 2020 09:56:28 -0400
Message-ID: <CADyTPEyDbV9WiOc9SOFvzPX9ccd7mhGG_Fj8QNmxGEY9UgkiRQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] nvme: Fix compat NVME_IOCTL_SUBMIT_IO numbering
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_065630_677869_6709F214 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 28/03/2020, Christoph Hellwig <hch@infradead.org> wrote:
> On Sat, Mar 28, 2020 at 01:09:08AM -0400, Nick Bowler wrote:
>> When __u64 has 64-bit alignment, the nvme_user_io structure has trailing
>> padding.  This causes problems in the compat case with 32-bit userspace
>> that has less strict alignment because the size of the structure differs.
>>
>> Since the NVME_IOCTL_SUBMIT_IO macro encodes the structure size itself,
>> the result is that this ioctl does not work at all in such a scenario:
>>
>>   # nvme read /dev/nvme0n1 -z 512
>>   submit-io: Inappropriate ioctl for device
>>
>> But by the same token, this makes it easy to handle both cases and
>> since the structures differ only in unused trailing padding bytes
>> we can simply not read those bytes.
>>
>> Signed-off-by: Nick Bowler <nbowler@draconx.ca>
>
> I think we already have a similar patch titled
> "nvme: Add compat_ioctl handler for NVME_IOCTL_SUBMIT_IO" in
> linux-next, with the difference of actually implementing the
> .compat_ioctl entry point.

OK, I found that one and it looks to solve the same problem.

I'm not sure about copying the nonexistent trailing padding from 32-bit
userspace but that may not be a problem in practice.

So feel free to drop this patch.

Thanks,
  Nick

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
