Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5807A18D9BB
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Mar 2020 21:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:
	Subject:From:To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jf+SeWqDGXiisMm+/ZpiZaY28TKcpPB0PWPzp1IAmZw=; b=UOkMSpmUwub7ov
	mRPArcmM4IfaE2YgnudyQ8QMBr2gujelamz40c1r3k/IehW0bLm+vaRp1sqlSqashRGQXwgfzfClQ
	0FUO5nFbyumf1o6DaFi2qgE3NkLnVUIEdcM5pvYKHtBljaF9aAd7pdBgdX3CFCRFdllab2IlXupr6
	IAewx2g4gglJ+jPzGQwEFHhkj5I4/h++QMRtL4uN8PE0nwHFaQb0zyPWiBaBaHDFzUvo7CZZ9n12y
	t5jlXdqeV97MZkGAC2kRz+71c5S58KMMp4+l18c58xAQ4IEWHx2G2DpXLAGZ/U+tEkS0wSnaU7z6P
	KiavlfBULxJlv91gEWPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFObk-0004B2-4T; Fri, 20 Mar 2020 20:51:08 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFObd-0003z2-2z
 for linux-nvme@lists.infradead.org; Fri, 20 Mar 2020 20:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584737459;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type: content-transfer-encoding:content-transfer-encoding;
 bh=F0Wn/j3OGR151v0v04wTuL3yrQ1fbYDQa+PGtHtTloM=;
 b=KJMmk4RYLm8qSQ+2ihKkHqK8Vn/ZvDKo3uJTba2sw541thVl3ncHxLxb7Eaw3KbQNcsOsc
 4Qdn5p/D55KFshz+cj/6lWos0H4PYtSZ0mIc9Jy2MpIzN0jIcvzhsF4xOdMsp54Wm39cPh
 NNSslaXhp9EAiUruB2y6zSbIIHDZv04=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-QWlZ9tUcP16HKwtuGDiyow-1; Fri, 20 Mar 2020 16:50:58 -0400
X-MC-Unique: QWlZ9tUcP16HKwtuGDiyow-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 741A1107ACCA
 for <linux-nvme@lists.infradead.org>; Fri, 20 Mar 2020 20:50:57 +0000 (UTC)
Received: from [10.3.128.7] (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0464490817
 for <linux-nvme@lists.infradead.org>; Fri, 20 Mar 2020 20:50:56 +0000 (UTC)
To: linux-nvme@lists.infradead.org
From: Tony Asleson <tasleson@redhat.com>
Subject: nvmetcli: Unable to run clear/restore
Organization: Red Hat
Message-ID: <7fdaeb65-0cad-8f9a-10e7-ae0c50494bf3@redhat.com>
Date: Fri, 20 Mar 2020 15:50:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_135101_212339_9BC8A203 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: tasleson@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

While experimenting with nvmetcli I'm unable to run clear or restore.

Using master branch against Fedora 31, 5.5.9-200.fc31.x86_64

# ./nvmetcli clear
Traceback (most recent call last):
  File "./nvmetcli", line 740, in <module>
    main()
  File "./nvmetcli", line 722, in main
    funcs[sys.argv[1]](savefile)
  File "./nvmetcli", line 689, in clear
    nvme.Root().clear_existing()
  File "/root/projects/nvmetcli/nvmet/nvme.py", line 315, in clear_existing
    p.delete()
  File "/root/projects/nvmetcli/nvmet/nvme.py", line 677, in delete
    a.delete()
  File "/root/projects/nvmetcli/nvmet/nvme.py", line 200, in delete
    os.rmdir(self.path)
PermissionError: [Errno 1] Operation not permitted:
'/sys/kernel/config/nvmet/ports/0/ana_groups/1'

# ./nvmetcli restore
No saved config file at None, ok, exiting

I just posted a patch series, with those changes when I repeat the
restore I get

# ./nvmetcli restore
Error processing config file at None, error [Errno 1] Operation not
permitted: '/sys/kernel/config/nvmet/ports/0/ana_groups/1', exiting

Same error when trying to run `make test` eg.

[Errno 1] Operation not permitted:
'/sys/kernel/config/nvmet/ports/0/ana_groups/1'

Do I have a mismatch between kernel and user space here or am I missing
something?

Thanks!
-Tony



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
